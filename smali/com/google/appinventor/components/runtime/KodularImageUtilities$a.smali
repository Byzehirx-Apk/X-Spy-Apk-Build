.class final Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularImageUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Landroid/view/View;)V
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    .line 102
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    .line 103
    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 107
    const/4 v3, 0x0

    move-object v2, v3

    .line 109
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 110
    move-object v2, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 115
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 116
    move-object v3, v2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 122
    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 118
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 119
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 121
    goto :goto_0

    .line 111
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 112
    :try_start_2
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 115
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 116
    move-object v3, v2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 120
    :cond_1
    goto :goto_0

    .line 118
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 119
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 121
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v3

    move-object v0, v3

    .line 115
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 116
    move-object v3, v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 120
    .line 121
    :cond_2
    :goto_1
    move-object v3, v0

    throw v3

    .line 118
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 119
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    .line 144
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 145
    move-object v2, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 151
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 152
    move-object v3, v2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .line 145
    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .line 148
    :goto_1
    return-object v0

    .line 154
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 155
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 146
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 147
    :try_start_2
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 151
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 152
    move-object v3, v2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 156
    .line 148
    :cond_1
    :goto_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 154
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 155
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 150
    :catchall_0
    move-exception v3

    move-object v1, v3

    .line 151
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 152
    move-object v3, v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 156
    .line 157
    :cond_2
    :goto_3
    move-object v3, v1

    throw v3

    .line 154
    :catch_3
    move-exception v3

    move-object v2, v3

    .line 155
    const-string/jumbo v3, "Kodular Image Utilities"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_3
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/io/File;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 127
    move-object v1, v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v0, v2

    .line 138
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;Z)Z

    move-result v2

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    const-string/jumbo v4, "LoadImageAsync"

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 136
    .line 138
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 133
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 134
    const-string/jumbo v2, "Kodular Image Utilities"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 135
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 2161
    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 2163
    move-object v2, v4

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "HTTP://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string/jumbo v4, "HTTPS://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2164
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 2174
    :goto_0
    return-object v0

    .line 2166
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2167
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2168
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2169
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2170
    :cond_3
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v2

    const-string/jumbo v4, "file:///"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2171
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2172
    move-object v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2174
    :cond_4
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2177
    :cond_5
    const-string/jumbo v3, "Kodular Image Utilities"

    const-string/jumbo v4, "The image util was not able to load the given image."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2178
    const/4 v3, 0x0

    .line 97
    move-object v0, v3

    goto/16 :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v2, v4

    move-object v1, v3

    .line 1184
    move-object v3, v2

    if-eqz v3, :cond_5

    .line 1185
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    .line 1186
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1196
    :goto_0
    return-void

    .line 1187
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 1188
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1189
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/Button;

    if-nez v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ScrollView;

    if-nez v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/HorizontalScrollView;

    if-nez v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    if-eqz v3, :cond_4

    .line 1190
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_3

    .line 1191
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1193
    :cond_3
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/KodularImageUtilities$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularImageUtilities;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/KodularImageUtilities;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularImageUtilities;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1196
    :cond_4
    const-string/jumbo v3, "Kodular Image Utilities"

    const-string/jumbo v4, "The image util did not found a supported view to load a image. The supported views are: Image, Buttons, Layouts, Canvas."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1199
    :cond_5
    const-string/jumbo v3, "Kodular Image Utilities"

    const-string/jumbo v4, "The result after loading the image was NULL. Please try again and check if the path is an valid image path."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 97
    goto/16 :goto_0
.end method
