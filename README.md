# keybinding

Autohotkey: Windows 키 매핑 변경

## 키 매핑

|Key|Binding|
|---|-------|
|`Esc`|`CapsLock`|
|`CapsLock`|`Esc`|
|`CapsLock` 홀딩|`Ctrl`|
|`CapsLock` 홀딩 + `h`|`Left`|
|`CapsLock` 홀딩 + `j`|`Down`|
|`CapsLock` 홀딩 + `k`|`Up`|
|`CapsLock` 홀딩 + `l`|`Right`|
|`jk` 동시 입력|`Esc`|
|`Windows` + `t`|Open Terminal|

## Windows 시작 시 자동 실행

1. Windows + R 로 실행 창 띄운 후 `shell:startup` 입력
2. 1에서 열리는 폴더에 스크립트 붙여넣기

> 모든 사용자에 대해 자동 실행을 적용하려면 `shell:startup` 대신 `shell:common startup` 을 입력한다. (관리자 권한 필요)

## 필요시 추가

맥과 키 위치가 달라 불편할 경우 추가

```
LWin::LCtrl
LCtrl::LAlt
LAlt::LWin
```
