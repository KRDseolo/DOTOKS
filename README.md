# 프로젝트 설명서

본 프로젝트에서는 다양한 화면의 소스 코드를 `lib/presentation` 또는 `lib/core/presentation` 디렉터리에서 확인할 수 있습니다. 해당 코드는 주로 디자인을 위한 코드입니다.

## 디렉터리 구조

- **lib/presentation**: 모든 화면의 소스 코드가 위치합니다.
- **lib/core/presentation**: 디자인과 관련된 핵심 코드가 포함됩니다.
- **assets**: 프로젝트에서 사용하는 모든 첨부 이미지가 저장됩니다.

## 화면 코드

각 화면의 소스 코드는 다음 경로에서 확인할 수 있습니다:

lib/presentation/
lib/core/presentation/

디자인 및 레이아웃을 구성하는 데 필요한 다양한 코드가 포함되어 있습니다.

### 화면 예시 코드

```dart
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Screen'),
      ),
      body: Center(
        child: Text('This is a sample screen.'),
      ),
    );
  }
}
```

## 이미지

프로젝트에서 사용되는 모든 이미지는 assets 디렉터리에 저장되어 있습니다. 이미지 파일에 접근하고 싶으시면 해당 디렉터리를 참조하세요.
