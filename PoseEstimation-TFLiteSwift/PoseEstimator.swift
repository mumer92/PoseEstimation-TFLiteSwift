//
//  PoseEstimator.swift
//  PoseEstimation-TFLiteSwift
//
//  Created by Doyoung Gwak on 2020/03/14.
//  Copyright © 2020 Doyoung Gwak. All rights reserved.
//

import CoreVideo

struct PoseEstimationKeypoint {
    let position: CGPoint
    let score: CGFloat
}

struct PoseEstimationHeatmaps {
    let keypoints: [PoseEstimationKeypoint]
    
    init(tfliteResult: TFLiteResult) {
        // <#TODO#>
        keypoints = []
    }
}

enum PoseEstimationError: Error {
    case commonFail
}

protocol PoseEstimator {
    func inference(with pixelBuffer: CVPixelBuffer) -> Result<PoseEstimationHeatmaps, PoseEstimationError>
}