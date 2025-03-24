import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

struct ReadingView: View {
    @State private var showingSafari1 = false
    @State private var showingSafari2 = false
    @State private var showingSafari3 = false
    @State private var showingSafari4 = false
    @State private var showingSafari5 = false
    @State private var showingSafari6 = false
    @State private var showingSafari7 = false
    @State private var showingSafari8 = false
    @State private var showingSafari9 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Text("Lung Cancer Tip")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 2)
                    .multilineTextAlignment(.center)
                
                Text("Avoid Smoking.")
                    .font(.body)
                    .foregroundColor(.black)
                    .padding()
                    .multilineTextAlignment(.center)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 4)
                    )
                    .padding(.horizontal, 10)
            }
            .padding()
            .padding(.bottom, 4)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(hex: colorPalette[2]))
                    .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)
            )
            
            VStack {
                Text("Lung Cancer: General Information")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            
            
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            VStack {
                                
                                Button(action: {
                                    withAnimation {
                                        showingSafari1 = true
                                    }
                                }) {
                                    Image("Logo_NCI")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 300, height: 300)
                                        .clipped()
                                        .cornerRadius(15)
                                        .scaleEffect(1.0)
                                        .overlay(
                                            Text("Lung Cancer: Patient Version")
                                                .font(.headline)
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 15)
                                                .background(Color.black.opacity(0.40))
                                                .foregroundColor(.white)
                                                .cornerRadius(8)
                                                .padding(.bottom, 10)
                                                .frame(maxWidth: .infinity),
                                            alignment: .bottom
                                        )
                                }
                                .sheet(isPresented: $showingSafari1) {
                                    SafariView(url: URL(string: "https://www.cancer.gov/types/lung")!)
                                }
                                
                                Text("National Institute of Health - National Cancer Institute")
                                    .font(.subheadline)
                            }
                            
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        showingSafari2 = true
                                    }
                                }) {
                                    Image("ACS")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 300, height: 300)
                                        .clipped()
                                        .cornerRadius(15)
                                        .scaleEffect(1.0)
                                        .overlay(
                                            Text("Lung Cancer Guide")
                                                .font(.headline)
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 15)
                                                .background(Color.black.opacity(0.40))
                                                .foregroundColor(.white)
                                                .cornerRadius(8)
                                                .padding(.bottom, 10)
                                                .frame(maxWidth: .infinity),
                                            alignment: .bottom
                                        )
                                }
                                .sheet(isPresented: $showingSafari2) {
                                    SafariView(url: URL(string: "https://www.cancer.org/cancer/types/lung-cancer.html")!)
                                }
                                
                                Text("American Cancer Society")
                                    .font(.subheadline)
                            }
                            
                            // Third Section
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        showingSafari3 = true
                                    }
                                }) {
                                    Image("Logo_RESP")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 300, height: 300)
                                                                        .clipped()
                                        .cornerRadius(15)
                                        .scaleEffect(1.0)
                                        .overlay(
                                            Text("What is Lung Cancer?")
                                                .font(.headline)
                                                .padding(.vertical, 10)
                                                .padding(.horizontal, 15)
                                                .background(Color.black.opacity(0.40))
                                                .foregroundColor(.white)
                                                .cornerRadius(8)
                                                .padding(.bottom, 10)
                                                .frame(maxWidth: .infinity),
                                            alignment: .bottom
                                        )
                                }
                                .sheet(isPresented: $showingSafari3) {
                                    SafariView(url: URL(string: "https://resphealth.org/issues/lung-cancer/?gad_source=1&gclid=CjwKCAiA5pq-BhBuEiwAvkzVZeiPZxBO_MSC4vpVYAoiP8oO3BsFd4oHh_1-BdiT37BYauwEpGS6BRoCTOsQAvD_BwE")!)
                                }
                                
                                Text("Respiratory Health Association")
                                    .font(.subheadline)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    }
                    .padding(.bottom, 20)
                    .padding(.leading, 20)
                
                // Second Horizontal ScrollView
                
                Text("Treatments")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
            
                        
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari4 = true
                                }
                            }) {
                                Image("Logo_CDC")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Treatment of Lung Cancer")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari4) {
                                SafariView(url: URL(string: "https://www.cdc.gov/lung-cancer/treatment/index.html#:~:text=Lung%20cancer%20is%20treated%20in,before%20this%20treatment%20is%20used.")!)
                            }
                            
                            Text("Center for Disease Control")
                                
                                .font(.subheadline)
                        }
                        
                     
                        // Second Section
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari5 = true
                                }
                            }) {
                                Image("Logo_JHU")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Lung Cancer Treatment")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari5) {
                                SafariView(url: URL(string: "https://www.hopkinsmedicine.org/health/conditions-and-diseases/lung-cancer/lung-cancer-treatment#:~:text=Depending%20on%20its%20type%20and%20stage%2C%20lung,having%20more%20than%20one%20type%20of%20treatment.")!)
                            }
                            
                            Text("Johns Hopkins University")
                                .font(.subheadline)
                        }
                        
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari6 = true
                                }
                            }) {
                                Image("Logo_CCV")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Treatments for Lung Cancer")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari6) {
                                SafariView(url: URL(string: "https://www.cancervic.org.au/cancer-information/types-of-cancer/lung_cancer/treatment-for-early-lung-cancer.html#:~:text=Early%20(stage%201%20or%202,is%20starting%20to%20be%20used.")!)
                            }
                            
                            Text("Cancer Council Victoria")
                                .font(.subheadline)
                        }
                        
                      
                        
                        
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                .padding(.bottom, 20)
                .padding(.leading, 20)
                
                // Third
                /*
                Text("Prevention")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        

                        // First Section
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari7 = true
                                }
                            }) {
                                
                                
                                Image("alvin-balemesa-MYfq3tf34p8-unsplash")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Skin Cancer Prevention")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari7) {
                                SafariView(url: URL(string: "https://www.skincancer.org/skin-cancer-prevention/")!)
                            }
                            
                            Text("The Skin Cancer Foundation")
                                .font(.subheadline)
                        }
                        // Second Section
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari8 = true
                                }
                            }) {
                                Image("natallia-photo-KRfx2mXnQn8-unsplash")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Reducing Risk for Skin Cancer")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari8) {
                                SafariView(url: URL(string: "https://www.cdc.gov/skin-cancer/prevention/index.html")!)
                            }
                            
                            Text("Center for Disease Control")
                                .font(.subheadline)
                        }
                        
                        // Third Section
                        VStack {
                            Button(action: {
                                withAnimation {
                                    showingSafari9 = true
                                }
                            }) {
                            
                            
                                Image("angelica-echeverry-5KY5LP_zc44-unsplash")
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 300, height: 300)
                                    .clipped()
                                    .cornerRadius(15)
                                    .scaleEffect(1.0)
                                    .overlay(
                                        Text("Early Detection: Spot the Cancer When It's Easiest to Treat")
                                            .font(.headline)
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 15)
                                            .background(Color.black.opacity(0.40))
                                            .foregroundColor(.white)
                                            .cornerRadius(8)
                                            .padding(.bottom, 10)
                                            .frame(maxWidth: .infinity),
                                        alignment: .bottom
                                    )
                            }
                            .sheet(isPresented: $showingSafari9) {
                                SafariView(url: URL(string: "https://www.skincancer.org/early-detection/#:~:text=That's%20why%20skin%20exams%2C%20both,become%20dangerous%2C%20disfiguring%20or%20deadly.")!)
                            }
                            
                            Text("The Skin Cancer Foundation")
                                .font(.subheadline)
                        }
                        
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                .padding(.bottom, 20)
                .padding(.leading, 20)
          
            */
          
            }
        }
    }
    
    struct ReadingView_Previews: PreviewProvider {
        static var previews: some View {
            ReadingView()
        }
    }
}
