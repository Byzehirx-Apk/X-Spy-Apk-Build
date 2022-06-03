.class final Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidCloudinary;
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;B)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const/4 v7, 0x0

    :try_start_0
    aget-object v6, v6, v7

    move-object v2, v6

    .line 131
    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    move-object v6, v2

    const-string/jumbo v7, "file://"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 134
    :cond_0
    move-object v6, v2

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move v12, v6

    move v6, v12

    move v7, v12

    .line 135
    move v1, v7

    if-lez v6, :cond_1

    move-object v6, v2

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v1, v6

    .line 136
    new-instance v6, Ljava/io/File;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 138
    new-instance v6, Lcom/cloudinary/Cloudinary;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "cloud_name"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 139
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, "api_key"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 140
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const-string/jumbo v11, "api_secret"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    move-object v11, v0

    iget-object v11, v11, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    .line 141
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 138
    invoke-static {v8}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/cloudinary/Cloudinary;-><init>(Ljava/util/Map;)V

    move-object v3, v6

    .line 145
    const/16 v6, 0x1e

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "ai"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "gif"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    const-string/jumbo v9, "webp"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x3

    const-string/jumbo v9, "bmp"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x4

    const-string/jumbo v9, "djvu"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x5

    const-string/jumbo v9, "ps"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x6

    const-string/jumbo v9, "ept"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x7

    const-string/jumbo v9, "eps"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x8

    const-string/jumbo v9, "eps3"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x9

    const-string/jumbo v9, "flif"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xa

    const-string/jumbo v9, "heif"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xb

    const-string/jumbo v9, "heic"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xc

    const-string/jumbo v9, "ico"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xd

    const-string/jumbo v9, "jpg"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xe

    const-string/jumbo v9, "jpe"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xf

    const-string/jumbo v9, "jpeg"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x10

    const-string/jumbo v9, "jpc"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x11

    const-string/jumbo v9, "jp2"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x12

    const-string/jumbo v9, "j2k"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x13

    const-string/jumbo v9, "wdp"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x14

    const-string/jumbo v9, "jxr"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x15

    const-string/jumbo v9, "hdp"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x16

    const-string/jumbo v9, "png"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x17

    const-string/jumbo v9, "psd"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x18

    const-string/jumbo v9, "arw"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x19

    const-string/jumbo v9, "cr2"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x1a

    const-string/jumbo v9, "svg"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x1b

    const-string/jumbo v9, "tga"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x1c

    const-string/jumbo v9, "tif"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x1d

    const-string/jumbo v9, "tiff"

    aput-object v9, v7, v8

    move-object v4, v6

    .line 148
    const/16 v6, 0x12

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "mp4"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "webm"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    const-string/jumbo v9, "flv"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x3

    const-string/jumbo v9, "mov"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x4

    const-string/jumbo v9, "ogv"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x5

    const-string/jumbo v9, "3gp"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x6

    const-string/jumbo v9, "3g2"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x7

    const-string/jumbo v9, "wmv"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x8

    const-string/jumbo v9, "mpeg"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x9

    const-string/jumbo v9, "flv"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xa

    const-string/jumbo v9, "mkv"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xb

    const-string/jumbo v9, "avi"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xc

    const-string/jumbo v9, "mp3"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xd

    const-string/jumbo v9, "wav"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xe

    const-string/jumbo v9, "aac"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xf

    const-string/jumbo v9, "ogg"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x10

    const-string/jumbo v9, "wma"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x11

    const-string/jumbo v9, "flac"

    aput-object v9, v7, v8

    move-object v5, v6

    .line 152
    move-object v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "resource_type"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "image"

    aput-object v9, v7, v8

    invoke-static {v6}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    move-object v1, v6

    .line 160
    :goto_1
    move-object v6, v3

    :try_start_1
    invoke-virtual {v6}, Lcom/cloudinary/Cloudinary;->uploader()Lcom/cloudinary/Uploader;

    move-result-object v6

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/cloudinary/Uploader;->upload(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v6

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    const-string/jumbo v8, "secure_url"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 162
    const-string/jumbo v6, "sucessful"

    move-object v1, v6

    .line 163
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v6

    .line 178
    :goto_2
    return-object v0

    .line 135
    :cond_1
    :try_start_2
    const-string/jumbo v6, ""

    goto/16 :goto_0

    .line 154
    :cond_2
    move-object v6, v5

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "resource_type"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "video"

    aput-object v9, v7, v8

    invoke-static {v6}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 157
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "resource_type"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "raw"

    aput-object v9, v7, v8

    invoke-static {v6}, Lcom/cloudinary/utils/ObjectUtils;->asMap([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v6

    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 165
    const-string/jumbo v6, "Cloudinary"

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 167
    const-string/jumbo v6, ""

    move-object v2, v6

    .line 168
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8
    :try_end_2
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v6

    goto/16 :goto_2

    .line 170
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 171
    const-string/jumbo v6, "Cloudinary"

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 172
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "EXCEPTION_0"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v0, v6

    goto/16 :goto_2

    .line 173
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 174
    const-string/jumbo v6, "Cloudinary"

    const-string/jumbo v7, "UploadMedia on cloudinary file exception."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 175
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "EXCEPTION_1"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v0, v6

    goto/16 :goto_2

    .line 176
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 177
    const-string/jumbo v6, "Cloudinary"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 178
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "EXCEPTION_2"

    aput-object v9, v7, v8

    move-object v0, v6

    goto/16 :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    move-object v2, v4

    move-object v1, v3

    .line 1183
    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string/jumbo v4, "EXCEPTION_0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1184
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    const-string/jumbo v5, "UploadMedia"

    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :goto_0
    return-void

    .line 1185
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string/jumbo v4, "EXCEPTION_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1186
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    const-string/jumbo v5, "UploadMedia"

    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1187
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string/jumbo v4, "EXCEPTION_2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1188
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    const-string/jumbo v5, "UploadMedia"

    const/16 v6, 0x450

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1190
    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidCloudinary;

    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->MediaUploaded(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    goto :goto_0
.end method
