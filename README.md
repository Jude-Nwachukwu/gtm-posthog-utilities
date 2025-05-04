# PostHog Utilities for Google Tag Manager

This is a custom variable template for Google Tag Manager that allows you to retrieve useful session data from PostHog using the official `posthog-js` client.

## 🤔 What It Does

This GTM variable template lets you access two key PostHog values in your tags, triggers, or variables:

- **Session Replay URL**: The URL to the current user's session replay recording.
- **Session ID**: The unique session identifier assigned by PostHog.

Both values are accessed in a secure and sandbox-compliant way using GTM's `callInWindow` Core API.

## 🛠️ How to Set It Up

1. Go to **Templates** in your GTM workspace.
2. Click **New** under **Variable Templates**.
3. Import the downloaded template file.
4. Save and name your template (e.g., `PostHog Utility`).
5. Add a new variable using this template and configure it:

### 🎛️ Configuration Options

Under the **“Select PostHog Variable to Retrieve”** dropdown:

| Option               | Description                                       | Output Example |
| -------------------- | ------------------------------------------------- | --------------- |
| `Session Replay URL` | Returns the current PostHog session playback URL. | `https://eu.posthog.com/project/phc_XXXX/replay/019638d7-b059-746c-9e51-1ddbe65b1151` |
| `Session ID`         | Returns the unique PostHog session ID.            | `'019638d7-b059-746c-9e51-1ddbe65b1151'` |

6. Use the variable in your tags or custom HTML snippets.

## 📌 Requirements

Make sure the `posthog-js` snippet is already installed and loaded on your site for this to work correctly.

## 😍 Developed By

Template developed by **Jude Nwachukwu Onyejekwe** from [DumbData](https://dumbdata.com)

## 📄 License

Apache License 2.0. Feel free to share your feedback.

