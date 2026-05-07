# DMine 多语言翻译文件

本仓库包含 [DMine（顶级扫雷）](https://www.dmine.cn) 项目的多语言翻译文件。

## 当前支持的语言（66种）

| 语言 | 代码 | 文件 |
|------|------|------|
| 简体中文 | zh | `strings_zh.dart` |
| 繁体中文 | zh_Hant | `strings_zh_hant.dart` |
| English | en | `strings_en.dart` |
| ... | ... | 共 66 种语言 |

完整的语言列表请查看目录中的 `strings_*.dart` 文件。

## 如何贡献翻译

欢迎帮助完善 DMine 的翻译！你可以：

1. **Fork** 本仓库
2. 创建你的分支：`git checkout -b feature/添加-xxx-语言`
3. **复制 `strings_en.dart`** 并重命名为对应的语言代码（例如 `strings_fr.dart`）
4. 将英文翻译成目标语言
5. 提交 Pull Request

### 命名规则

翻译文件命名格式：`strings_{语言代码}.dart`

语言代码遵循 [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) 标准：
- 单一语言：`strings_zh.dart`、`strings_ja.dart`、`strings_fr.dart`
- 区域变体：用下划线分隔，如 `strings_zh_hant.dart`、`strings_pt_br.dart`

### 翻译要求

- 保持与原文件相同的 dart 格式结构
- 不要修改字段名（如 `get appName`、`get startGame`）
- 如果某个词在目标语言中没有合适的翻译，可以使用英文原文替代
- 不确定的翻译可以加注释 `// TODO: 需要确认此翻译`

## 审核流程

1. 提交 Pull Request 后，维护者会在 GitHub 上审核
2. 如有修改意见，会在 PR 中提出
3. 审核通过后会合并并同步到主项目
