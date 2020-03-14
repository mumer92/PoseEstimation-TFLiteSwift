//
//  PoseNetPoseEstimator.swift
//  PoseEstimation-TFLiteSwift
//
//  Created by Doyoung Gwak on 2020/03/14.
//  Copyright © 2020 Doyoung Gwak. All rights reserved.
//

import CoreVideo

class PoseNetPoseEstimator: PoseEstimator {
    let poseInterpretor = TFLiteImageInterpretor()
    
    func predict(with pixelBuffer: CVPixelBuffer) -> PoseEstimationResult {
        guard let tfliteResult = poseInterpretor.predict(with: pixelBuffer) else { return .fail }
        return PoseEstimationResult(tfliteResult: tfliteResult)
    }
}
