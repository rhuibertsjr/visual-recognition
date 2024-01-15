#ifndef VISREC_H
#define VISREC_H

#pragma once

//= rhjr: dependencies
#include <stdio.h>
#include <stdint.h>

#include <opencv2/opencv.hpp>

//= rhjr: project keywords
#define internal static

internal uint8_t vis_load_image_from_path(cv::Mat dst, const char* image_path);

#endif
