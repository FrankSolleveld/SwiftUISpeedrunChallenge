//
//  ContentView.swift
//  SwiftUIChallengeSpeedrun
//
//  Created by Frank Solleveld on 19/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        VStack {
          VStack {
            HStack {
              Button(
                action: { print("bolt") },
                label: {
                  Image(systemName: "bolt.fill")
                    .foregroundColor(.white)
                    .imageScale(.small)
                    .padding(6)
                    .overlay(
                      Circle()
                        .stroke(.white.opacity(0.85), lineWidth: 0.8)
                    )
                })
              .padding(.leading)

              Spacer()

              Button(
                action: { print("Chevron Up") },
                label: {
                  Image(systemName: "chevron.up")
                    .foregroundColor(.white)
                    .imageScale(.small)
                    .padding(9)
                    .overlay(
                      Circle()
                        .foregroundColor(.white.opacity(0.3))
                    )
                })

              Spacer()

              Button(
                action: { print("live photo") },
                label: {
                  Image(systemName: "livephoto")
                    .foregroundColor(.white)
                    .imageScale(.large)
                })
              .padding(.trailing)
            }

            Spacer()
              .frame(height: 20)
          }
          .padding(.bottom, 30)
          .background(
            Rectangle()
              .fill(.black.opacity(0.6))
              .ignoresSafeArea()
          )

          Spacer()

          HStack(spacing: 5) {
            Spacer()

            Button(action: { print("0.5x zoom ") }, label: {
              Text("0.5")
                .foregroundColor(.white)
                .font(.system(size: 8, design: .monospaced))
                .padding(4.5)
                .background(
                  Circle()
                    .foregroundColor(.black.opacity(0.9))
                )
            })

            Button(action: { print("1 zoom ") }, label: {
              HStack(spacing: 1) {
                Text("1")
                  .font(.system(size: 12, design: .monospaced))
                  .bold()
                Image(systemName: "xmark")
                  .resizable()
                  .frame(width: 5, height: 5)
              }
              .foregroundColor(.yellow)
              .padding(9)
              .background(
                Circle()
                  .foregroundColor(.black.opacity(0.9))
              )
            })

            Button(action: { print("3x zoom ") }, label: {
              Text("3")
                .foregroundColor(.white)
                .font(.system(size: 10, design: .monospaced))
                .padding(7)
                .background(
                  Circle()
                    .foregroundColor(.black.opacity(0.9))
                )
            })

            Spacer()
          }

          VStack {
            ScrollView(.horizontal) {
              HStack {
                Text("CINEMATIC")
                  .padding(.horizontal, 5)
                Text("VIDEO")
                  .padding(.horizontal, 5)
                Text("PHOTO")
                  .padding(.horizontal, 5)
                  .foregroundColor(.yellow)
                Text("PORTRAIT")
                  .padding(.horizontal, 5)
                Text("PANO")
                  .padding(.horizontal, 5)
              }
              .foregroundColor(.white)
              .font(.system(size: 15, design: .monospaced))
              .padding(.bottom)
            }
            HStack {
              Button(
                action: { print("Preview") },
                label: {
                  Image("rotterdam")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 44, height: 44)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                })
              .padding(.leading)

              Spacer()

              Button(
                action: { print("Photo") },
                label: {
                  ZStack {
                    Circle()
                      .stroke(.white, lineWidth: 2)
                      .frame(width: 65, height: 65)
                      .foregroundColor(.white)
                    Circle()
                      .frame(width: 59, height: 59)
                      .foregroundColor(.white)
                  }
                })

              Spacer()

              Button(
                action: { print("Camera rotate") },
                label: {
                  Image(systemName: "arrow.triangle.2.circlepath")
                    .foregroundColor(.white)
                    .imageScale(.large)
                    .padding(8)
                    .background(
                      Circle()
                        .foregroundColor(.white.opacity(0.4))
                    )
                })
              .padding(.trailing)
            }
            Spacer()
              .frame(height: 30)
          }
          .padding(.vertical)
          .background(
            ZStack {
              LinearGradient(
                colors: [.clear, .black.opacity(0.8)],
                startPoint: .top,
                endPoint: .bottom
              )
              .ignoresSafeArea()
              Rectangle()
                .fill(.black.opacity(0.8))
                .ignoresSafeArea()
            }
          )
        }
      }
      .background(
        Image("rotterdam")
          .ignoresSafeArea()
      )
      .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
