# Notify Action

This action sends HTTP post request with inforation about workflow. We are using it to trigger some actions after deployment workflow is done.

## Inputs

### `url`

**Required** An URL which should be triggered. An HTTP POST request with the data about workflow will be send there.

## Outputs

No outputs. Just completes with zero code.

## Example usage

```yml
name: Send notification to Telegram
uses: grab-grab/notify-action
with:
  url: https://example.com/test
```
