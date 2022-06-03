.class public Lcom/google/appinventor/components/runtime/Sharing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sharing is a non-visible component that enables sharing files and/or messages between your app and other apps installed on a device. The component will display a list of the installed apps that can handle the information provided, and will allow the user to choose one to share the content with, for instance a mail app, a social network app, a texting app, and so on.<br>The file path can be taken directly from other components such as the Camera or the ImagePicker, but can also be specified directly to read from storage. Be aware that different devices treat storage differently, so a few things to try if, for instance, you have a file called arrow.gif in the folder <code>Appinventor/assets</code>, would be: <ul><li><code>\"file:///sdcard/Appinventor/assets/arrow.gif\"</code></li> or <li><code>\"/storage/Appinventor/assets/arrow.gif\"</code></li></ul>"
    iconName = "images/sharing.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 82
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Sharing;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Sharing;->context:Landroid/content/Context;

    .line 89
    move-object v2, v0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Sharing;->ShareDialogMessage(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public AppNotFound(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the social media name if an app is not installed. Possible names are \'Facebook Messenger\', \'Facebook\', \'Twitter\', \'Telegram\', \'Twitter\', \'Snapchat\', \'Google Plus\' or the given custom package name."
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AppNotFound"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 205
    return-void
.end method

.method public ShareDialogMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Send using..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text for the sharing dialog. The default text is \'Send using...\'."
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    const-string/jumbo v2, "Send using..."

    move-object v1, v2

    .line 213
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareDialogMessage- User forgot to add a default share dialog text. Use default text."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 215
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Sharing;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public ShareFile(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a file through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the file inserted on it."
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sharing;->ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares both a file and a message through any capable application installed on the phone by displaying a list of available apps and allowing the user to  choose one from the list. The selected app will open with the file and message inserted on it."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v6, v1

    if-nez v6, :cond_0

    .line 130
    .line 173
    :goto_0
    return-void

    .line 132
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    goto :goto_0

    .line 136
    :cond_1
    move-object v6, v1

    :try_start_0
    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 137
    const-string/jumbo v6, "file://"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 140
    :cond_2
    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v3, v6

    .line 141
    new-instance v6, Ljava/io/File;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v3

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 142
    move-object v4, v7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    move-object v6, v1

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 144
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 145
    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 146
    move-object v1, v7

    if-nez v6, :cond_3

    .line 148
    const-string/jumbo v6, "application/octet-stream"

    move-object v1, v6

    .line 151
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Sharing;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Sharing;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 152
    new-instance v6, Landroid/content/Intent;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string/jumbo v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    .line 153
    move-object v5, v7

    const-string/jumbo v7, "android.intent.extra.STREAM"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 154
    move-object v6, v5

    const-string/jumbo v7, "android.intent.extra.STREAM"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    .line 155
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 156
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 157
    move-object v6, v2

    if-eqz v6, :cond_4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 158
    move-object v6, v5

    const-string/jumbo v7, "android.intent.extra.TEXT"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 160
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Sharing;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 161
    goto/16 :goto_0

    .line 162
    :cond_5
    const-string/jumbo v6, "ShareFile"

    move-object v5, v6

    .line 163
    move-object v6, v2

    if-eqz v6, :cond_6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 164
    const-string/jumbo v6, "ShareFileWithMessage"

    move-object v5, v6

    .line 165
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    move-object v8, v5

    const/16 v9, 0x7d1

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 169
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    const-string/jumbo v8, "ShareFileWithMessage"

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 172
    goto/16 :goto_0

    .line 170
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 171
    const-string/jumbo v6, "SocialMediaSharing"

    move-object v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 173
    goto/16 :goto_0
.end method

.method public ShareMessage(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the message inserted on it."
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 101
    move-object v2, v4

    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 102
    move-object v3, v2

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 109
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Sharing;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public ShareMessageTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through the given app. If the given app is not installed, then the \'AppNotFound\' event will be invoked and return the given name."
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    :cond_0
    const-string/jumbo v4, "Checkout www.kodular.io - Android Builder."

    move-object v1, v4

    .line 317
    const-string/jumbo v4, "SocialMediaSharing"

    const-string/jumbo v5, "ShareMessageTo- User forgot to add a message. Use default message."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 320
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    :cond_2
    const-string/jumbo v4, "Custom"

    move-object v2, v4

    .line 322
    const-string/jumbo v4, "SocialMediaSharing"

    const-string/jumbo v5, "ShareMessageTo- User forgot to add a name. Use default custom name."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 324
    :cond_3
    move-object v4, v0

    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    const-string/jumbo v8, "ShareMessageTo- "

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public ShareMessageToFacebook(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Facebook. If Facebook is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Facebook\'."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 239
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToFacebook- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 241
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.facebook.katana"

    move-object v4, v1

    const-string/jumbo v5, "Facebook"

    const-string/jumbo v6, "ShareMessageToFacebook- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public ShareMessageToFacebookMessenger(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Facebook Messenger. If Messenger is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Facebook Messenger\'."
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 226
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToFacebookMessenger- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 228
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.facebook.orca"

    move-object v4, v1

    const-string/jumbo v5, "Facebook Messenger"

    const-string/jumbo v6, "ShareMessageToFacebookMessenger- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public ShareMessageToGooglePlus(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Google Plus. If Google+ is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Google Plus\'."
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 304
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToGooglePlus- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 306
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.google.android.apps.plus"

    move-object v4, v1

    const-string/jumbo v5, "Google Plus"

    const-string/jumbo v6, "ShareMessageToGooglePlus- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public ShareMessageToSnapchat(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Snapchat. If Snapchat is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Snapchat\'."
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 291
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToSnapchat- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 293
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.snapchat.android"

    move-object v4, v1

    const-string/jumbo v5, "Snapchat"

    const-string/jumbo v6, "ShareMessageToSnapchat- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public ShareMessageToTelegram(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Telegram. If Telegram is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Telegram\'."
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 265
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToTelegram- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 267
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "org.telegram.messenger"

    move-object v4, v1

    const-string/jumbo v5, "Telegram"

    const-string/jumbo v6, "ShareMessageToTelegram- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public ShareMessageToTwitter(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through Twitter. If Twitter is not installed, then the \'AppNotFound\' event will be invoked and return the name \'Twitter\'."
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 252
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToTwitter- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 254
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.twitter.android"

    move-object v4, v1

    const-string/jumbo v5, "Twitter"

    const-string/jumbo v6, "ShareMessageToTwitter- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public ShareMessageToWhatsApp(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through WhatsApp. If WhatsApp is not installed, then the \'AppNotFound\' event will be invoked and return the name \'WhatsApp\'."
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :cond_0
    const-string/jumbo v2, "Checkout www.kodular.io - Android Builder."

    move-object v1, v2

    .line 278
    const-string/jumbo v2, "SocialMediaSharing"

    const-string/jumbo v3, "ShareMessageToWhatsApp- User forgot to add a message. Use default message."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 280
    :cond_1
    move-object v2, v0

    const-string/jumbo v3, "com.whatsapp"

    move-object v4, v1

    const-string/jumbo v5, "WhatsApp"

    const-string/jumbo v6, "ShareMessageToWhatsApp- "

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Sharing;->ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public ShareUtil(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 330
    move-object v5, v7

    const-string/jumbo v7, "android.intent.extra.TEXT"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 331
    move-object v6, v5

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 332
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 335
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .line 340
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 337
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Sharing;->AppNotFound(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v6, "SocialMediaSharing"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 340
    goto :goto_0
.end method
