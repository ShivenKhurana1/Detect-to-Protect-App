# Detect to Protect

**A convolutional neural network for early detection of lung cancer on CT scans, running on-device in an iOS app.**

🏆 **Lemelson Early Inventor Prize** (Society for Science) · 1st Place in Biology, Science Montgomery · AstraZeneca Award · James Phang Aspiring Scientist Award, Metro Bethesda Rotary Club · Nominated, Thermo Fisher Scientific Junior Innovators Challenge

[Poster](https://drive.google.com/file/d/1Q9Dw3irs2n7GgsAqVr7llPdTtbq8pV_j/view?usp=drive_link)

> ⚠️ Research prototype for education. Not a medical device and not for clinical diagnosis.

## Why I built it

Lung cancer kills about 1.6 million people a year, and one big reason is timing: symptoms often don't appear until the cancer has reached the middle or late stages, when treatment options are limited. While reading about screening, I learned that even experienced radiologists can miss small nodules on CT scans, and that the FDA had recently cleared an AI tool (Qure.ai's qCT LN Quant) to help characterize lung nodules on chest CT.

That made me want to see how far I could get myself. My goal was a model that could act as a second reader for radiologists, flagging what might be missed and cutting the time spent on each scan, along with an app that teaches people about prevention. After building MoleDetect as a web app, this project was also my step to running a model directly on a phone.

## What it does

Classifies a lung CT image into one of four classes:

- Lung adenocarcinoma (LAC)
- Lung squamous cell carcinoma (LSCC)
- Large cell carcinoma (LCC)
- Benign lung tissue (LBT)

The iOS app (Swift, SwiftUI) lets a user select a scan and returns a prediction on the device. It also has educational content on lung cancer prevention, a scan history stored per account (Firebase Auth and Firestore), a map search for nearby radiologists (MapKit), reminder notifications, and an "AI Radiologist" chat tab that is under development.

## Data

- 19,000+ CT images from two public Kaggle datasets ([compiled](https://www.kaggle.com/datasets/blackpearls1/lung-cancer-compiled), [augmented](https://www.kaggle.com/datasets/khalidelmaria/ct-lung-cancer-data-augmentation))
- Train/test split about 3:1; images resized to 224×224, normalized, flipped, with rotation and dilation augmentation

## Models

**Custom CNN (science fair, 2025; also the model the app runs).** Custom CNN inspired by AlexNet, 22 layers (13 convolutional, 3 dense), built step by step until it began to overfit. Adam optimizer, starting learning rate 0.001 halved on validation-loss plateaus down to 0.00001 (ReduceLROnPlateau), 50 epochs on Kaggle GPUs.

| Metric (test set) | Result |
|---|---|
| Overall accuracy | 95.28% |
| Training / validation accuracy | ~99% / ~94% |

| Class | Accuracy | Precision | Sensitivity | Specificity |
|---|---|---|---|---|
| LSCC | 0.978 | 0.934 | 0.979 | 0.977 |
| LAC | 0.967 | 0.972 | 0.921 | 0.988 |
| LBT | 0.991 | 0.972 | 0.990 | 0.991 |
| LCC | 0.982 | 0.956 | 0.956 | 0.989 |

**In the app.** The same CNN is bundled as Core ML (`DetectToProtect/LungAI_image_input.mlpackage`, 13 conv + 3 dense layers) and runs on-device. `resnet101_model.mlpackage` in the repo root is not part of the Xcode target. `RiskClassifier` and `Diagnoser` are ResNet-18 skin-lesion models left from an earlier version of the app.


## Limitations

- Public datasets of single CT slices, not full patient scans; no external hospital validation.
- One source dataset is pre-augmented. If augmented copies of the same image fall in both train and test, accuracy is overstated. Next step: re-split by original image or patient and report the result.
- Not evaluated on early-stage nodules specifically.

## Run it

```bash
git clone https://github.com/ShivenKhurana1/Detect-to-Protect-App.git
open Detect-to-Protect-App/DetectToProtect.xcodeproj
```

Requirements: Xcode 15.4+ and an iOS 17.5+ simulator or device. Swift packages (Firebase, ChatGPTSwift) resolve on first build. Sign-in uses the Firebase project in `GoogleService-Info.plist`; swap in your own to use a separate backend.

## Future work

Collaborate with radiologists for annotated clinical data; patient-level validation; extend to other cancers.

## License

MIT. See [LICENSE](LICENSE).
