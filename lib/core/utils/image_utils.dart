class ImageUtils {
  static String posterUrl(String path) {
    if (path.isEmpty) {
      return '';
    }
    return 'https://image.tmdb.org/t/p/w500$path';
  }
}
