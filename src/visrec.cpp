#include "visrec.hpp"

internal uint8_t 
vis_load_image_from_path(cv::Mat *dst, const char* image_path)
{
  cv::Mat result = cv::imread(image_path);

  if (result.empty())
    return -1;

  *dst = result;
  return 0;
}


int main(int argc, char *argv[])
{
  if (argc != 2)
  {
    printf("(Visual recognition) Usage: '%s [IMAGE]'\n", argv[0]);
    printf("  - Make sure you have provided a destination and source file.\n");
    printf("  - Please enter a valid file name.\n");
    exit(0);
  }

  cv::Mat image;
  const char* image_path = argv[1];

  vis_load_image_from_path(&image, image_path);

  cv::imshow("Image", image);

  cv::waitKey(0);
  cv::destroyAllWindows();
  
  return 0;
}

