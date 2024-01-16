# navigator_1_and_2

Navigator 1と2の動作を確認するための、サンプルプロジェクト。

## Build

```bash
flutter clean
flutter pub get
flutter build web --base-href /example_navigator_1_and_2/
rm -rfv ./docs
mv ./build/web ./docs
```
