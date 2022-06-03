.class public Lcom/google/appinventor/components/runtime/ImageEditor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that allows users to edit images."
    iconName = "images/imageEditor.png"
    nonVisible = true
    version = 0x1
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
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 57
    move-object v2, v0

    const-string/jumbo v3, "NewImage.png"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    .line 67
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 68
    const-string/jumbo v2, "ImageEditor"

    const-string/jumbo v3, "ImageEditor Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 69
    return-void
.end method

.method private SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    if-eqz v2, :cond_0

    .line 99
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "Save"

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v2, "PERMISSION_DENIED_ERROR"

    move-object v0, v2

    goto :goto_0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 880
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move v3, v6

    .line 881
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v4, v6

    .line 882
    move v6, v1

    int-to-float v6, v6

    move v7, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v1, v6

    .line 883
    move v6, v2

    int-to-float v6, v6

    move v7, v4

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v2, v6

    .line 884
    new-instance v6, Landroid/graphics/Matrix;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    .line 885
    move-object v5, v7

    move v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v6

    .line 886
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 888
    move-object v0, v6

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 140
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 139
    const-string/jumbo v2, "ImageEditor"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 140
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 109
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 110
    move-object v4, v1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 111
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ImageEditor;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 112
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 113
    move-object v2, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 114
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 116
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v3, v4

    .line 125
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .line 116
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .line 132
    :goto_1
    return-object v0

    .line 127
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 128
    const-string/jumbo v4, "ImageEditor"

    move-object v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 117
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 118
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "Save"

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 119
    const-string/jumbo v4, "PERMISSION_DENIED_ERROR"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 123
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 125
    move-object v4, v2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 129
    .line 119
    :cond_0
    :goto_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_1

    .line 127
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 128
    const-string/jumbo v4, "ImageEditor"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 120
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 121
    :try_start_4
    const-string/jumbo v4, "ImageEditor"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 123
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 125
    move-object v4, v2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 129
    .line 132
    :cond_1
    :goto_3
    const-string/jumbo v4, "ERROR"

    move-object v0, v4

    goto :goto_1

    .line 127
    :catch_4
    move-exception v4

    move-object v3, v4

    .line 128
    const-string/jumbo v4, "ImageEditor"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 129
    goto :goto_3

    .line 123
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    .line 125
    move-object v4, v2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 126
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 129
    .line 131
    :cond_2
    :goto_4
    move-object v4, v1

    throw v4

    .line 127
    :catch_5
    move-exception v4

    move-object v2, v4

    .line 128
    const-string/jumbo v4, "ImageEditor"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_4
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ImageEditor;)Z
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->havePermission:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public BlurEffect(Ljava/lang/String;FI)Ljava/lang/String;
    .locals 44
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a blur effect."
    .end annotation

    .prologue
    .line 663
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    invoke-direct/range {v35 .. v36}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v35

    move-object/from16 v43, v35

    move-object/from16 v35, v43

    move-object/from16 v36, v43

    .line 664
    move-object/from16 v3, v36

    if-nez v35, :cond_0

    const-string/jumbo v35, ""

    move-object/from16 v2, v35

    .line 864
    :goto_0
    return-object v2

    .line 666
    :cond_0
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v36, v4

    mul-float v35, v35, v36

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v6, v35

    .line 667
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v36, v4

    mul-float v35, v35, v36

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v4, v35

    .line 668
    move-object/from16 v35, v3

    move/from16 v36, v6

    move/from16 v37, v4

    const/16 v38, 0x0

    invoke-static/range {v35 .. v38}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v35

    move-object/from16 v43, v35

    move-object/from16 v35, v43

    move-object/from16 v36, v43

    .line 670
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v36

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v35

    move-object/from16 v3, v35

    .line 672
    move/from16 v35, v5

    if-gtz v35, :cond_1

    .line 673
    const/16 v35, 0x0

    move-object/from16 v2, v35

    goto :goto_0

    .line 676
    :cond_1
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v4, v35

    .line 677
    move-object/from16 v35, v3

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v6, v35

    .line 679
    move/from16 v35, v4

    move/from16 v36, v6

    mul-int v35, v35, v36

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v7, v35

    .line 680
    const-string/jumbo v35, "ImageEditor"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v43, v36

    move-object/from16 v36, v43

    move-object/from16 v37, v43

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v37, v7

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 681
    move-object/from16 v35, v3

    move-object/from16 v36, v7

    const/16 v37, 0x0

    move/from16 v38, v4

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v41, v4

    move/from16 v42, v6

    invoke-virtual/range {v35 .. v42}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 683
    move/from16 v35, v4

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v8, v35

    .line 684
    move/from16 v35, v6

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v9, v35

    .line 685
    move/from16 v35, v4

    move/from16 v36, v6

    mul-int v35, v35, v36

    move/from16 v10, v35

    .line 686
    move/from16 v35, v5

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    add-int v35, v35, v36

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v11, v35

    .line 688
    move/from16 v35, v10

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v12, v35

    .line 689
    move/from16 v35, v10

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v13, v35

    .line 690
    move/from16 v35, v10

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v14, v35

    .line 692
    move/from16 v35, v4

    move/from16 v36, v6

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v24, v35

    .line 694
    move/from16 v35, v11

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    const/16 v36, 0x1

    shr-int/lit8 v35, v35, 0x1

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    .line 695
    mul-int v35, v35, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    .line 696
    move/from16 v15, v36

    const/16 v36, 0x8

    shl-int/lit8 v35, v35, 0x8

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    move-object/from16 v25, v35

    .line 697
    const/16 v35, 0x0

    move/from16 v20, v35

    :goto_1
    move/from16 v35, v20

    move/from16 v36, v15

    const/16 v37, 0x8

    shl-int/lit8 v36, v36, 0x8

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    .line 698
    move-object/from16 v35, v25

    move/from16 v36, v20

    move/from16 v43, v36

    move/from16 v36, v43

    move/from16 v37, v43

    move/from16 v38, v15

    div-int v37, v37, v38

    aput v37, v35, v36

    .line 697
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 701
    :cond_2
    const/16 v35, 0x0

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v22, v36

    move/from16 v23, v35

    .line 703
    move/from16 v35, v11

    const/16 v36, 0x3

    filled-new-array/range {v35 .. v36}, [I

    move-result-object v36

    sget-object v35, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v35 .. v36}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [[I

    move-object/from16 v26, v35

    .line 705
    move/from16 v35, v5

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v28, v35

    .line 708
    const/16 v35, 0x0

    move/from16 v19, v35

    :goto_2
    move/from16 v35, v19

    move/from16 v36, v6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_7

    .line 709
    const/16 v35, 0x0

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v17, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v16, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v15, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v31, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v30, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v29, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v34, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v33, v36

    move/from16 v32, v35

    .line 710
    move/from16 v35, v5

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v20, v35

    :goto_3
    move/from16 v35, v20

    move/from16 v36, v5

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_4

    .line 711
    move-object/from16 v35, v7

    move/from16 v36, v22

    move/from16 v37, v8

    move/from16 v38, v20

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    add-int v36, v36, v37

    aget v35, v35, v36

    move/from16 v21, v35

    .line 712
    move-object/from16 v35, v26

    move/from16 v36, v20

    move/from16 v37, v5

    add-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v43, v35

    move-object/from16 v35, v43

    move-object/from16 v36, v43

    .line 713
    move-object/from16 v27, v36

    const/16 v36, 0x0

    move/from16 v37, v21

    const/16 v38, 0x10

    shr-int/lit8 v37, v37, 0x10

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 714
    move-object/from16 v35, v27

    const/16 v36, 0x1

    move/from16 v37, v21

    const/16 v38, 0x8

    shr-int/lit8 v37, v37, 0x8

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 715
    move-object/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v37, v21

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 716
    move/from16 v35, v28

    move/from16 v36, v20

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v21, v35

    .line 717
    move/from16 v35, v15

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v15, v35

    .line 718
    move/from16 v35, v16

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v16, v35

    .line 719
    move/from16 v35, v17

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v17, v35

    .line 720
    move/from16 v35, v20

    if-lez v35, :cond_3

    .line 721
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v32, v35

    .line 722
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v33, v35

    .line 723
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v34, v35

    .line 710
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 725
    :cond_3
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v29, v35

    .line 726
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 727
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v31, v35

    goto :goto_4

    .line 730
    :cond_4
    move/from16 v35, v5

    move/from16 v20, v35

    .line 732
    const/16 v35, 0x0

    move/from16 v18, v35

    :goto_5
    move/from16 v35, v18

    move/from16 v36, v4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_6

    .line 734
    move-object/from16 v35, v12

    move/from16 v36, v22

    move-object/from16 v37, v25

    move/from16 v38, v15

    aget v37, v37, v38

    aput v37, v35, v36

    .line 735
    move-object/from16 v35, v13

    move/from16 v36, v22

    move-object/from16 v37, v25

    move/from16 v38, v16

    aget v37, v37, v38

    aput v37, v35, v36

    .line 736
    move-object/from16 v35, v14

    move/from16 v36, v22

    move-object/from16 v37, v25

    move/from16 v38, v17

    aget v37, v37, v38

    aput v37, v35, v36

    .line 738
    move/from16 v35, v15

    move/from16 v36, v29

    sub-int v35, v35, v36

    move/from16 v15, v35

    .line 739
    move/from16 v35, v16

    move/from16 v36, v30

    sub-int v35, v35, v36

    move/from16 v16, v35

    .line 740
    move/from16 v35, v17

    move/from16 v36, v31

    sub-int v35, v35, v36

    move/from16 v17, v35

    .line 742
    move/from16 v35, v20

    move/from16 v36, v5

    sub-int v35, v35, v36

    move/from16 v36, v11

    add-int v35, v35, v36

    move/from16 v21, v35

    .line 743
    move-object/from16 v35, v26

    move/from16 v36, v21

    move/from16 v37, v11

    rem-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v27, v35

    .line 745
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v29, v35

    .line 746
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v30, v35

    .line 747
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v31, v35

    .line 749
    move/from16 v35, v19

    if-nez v35, :cond_5

    .line 750
    move-object/from16 v35, v24

    move/from16 v36, v18

    move/from16 v43, v36

    move/from16 v36, v43

    move/from16 v37, v43

    move/from16 v38, v5

    add-int v37, v37, v38

    const/16 v38, 0x1

    add-int/lit8 v37, v37, 0x1

    move/from16 v38, v8

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    aput v37, v35, v36

    .line 752
    :cond_5
    move-object/from16 v35, v7

    move/from16 v36, v23

    move-object/from16 v37, v24

    move/from16 v38, v18

    aget v37, v37, v38

    add-int v36, v36, v37

    aget v35, v35, v36

    move/from16 v21, v35

    .line 754
    move-object/from16 v35, v27

    const/16 v36, 0x0

    move/from16 v37, v21

    const/16 v38, 0x10

    shr-int/lit8 v37, v37, 0x10

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 755
    move-object/from16 v35, v27

    const/16 v36, 0x1

    move/from16 v37, v21

    const/16 v38, 0x8

    shr-int/lit8 v37, v37, 0x8

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 756
    move-object/from16 v35, v27

    const/16 v36, 0x2

    move/from16 v37, v21

    const/16 v38, 0xff

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    aput v37, v35, v36

    .line 758
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v32, v35

    .line 759
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v33, v35

    .line 760
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v34, v35

    .line 762
    move/from16 v35, v15

    move/from16 v36, v32

    add-int v35, v35, v36

    move/from16 v15, v35

    .line 763
    move/from16 v35, v16

    move/from16 v36, v33

    add-int v35, v35, v36

    move/from16 v16, v35

    .line 764
    move/from16 v35, v17

    move/from16 v36, v34

    add-int v35, v35, v36

    move/from16 v17, v35

    .line 766
    move/from16 v35, v20

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v36, v11

    rem-int v35, v35, v36

    move/from16 v20, v35

    .line 767
    move-object/from16 v35, v26

    move/from16 v36, v20

    move/from16 v37, v11

    rem-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v27, v35

    .line 769
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v29, v35

    .line 770
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 771
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v31, v35

    .line 773
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v32, v35

    .line 774
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v33, v35

    .line 775
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v34, v35

    .line 777
    add-int/lit8 v22, v22, 0x1

    .line 732
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 779
    :cond_6
    move/from16 v35, v23

    move/from16 v36, v4

    add-int v35, v35, v36

    move/from16 v23, v35

    .line 708
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 781
    :cond_7
    const/16 v35, 0x0

    move/from16 v18, v35

    :goto_6
    move/from16 v35, v18

    move/from16 v36, v4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_d

    .line 782
    const/16 v35, 0x0

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v17, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v16, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v15, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v31, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v30, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v29, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v34, v36

    move/from16 v43, v35

    move/from16 v35, v43

    move/from16 v36, v43

    move/from16 v33, v36

    move/from16 v32, v35

    .line 783
    move/from16 v35, v5

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v36, v4

    mul-int v35, v35, v36

    move/from16 v8, v35

    .line 784
    move/from16 v35, v5

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v20, v35

    :goto_7
    move/from16 v35, v20

    move/from16 v36, v5

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_a

    .line 785
    const/16 v35, 0x0

    move/from16 v36, v8

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->max(II)I

    move-result v35

    move/from16 v36, v18

    add-int v35, v35, v36

    move/from16 v22, v35

    .line 787
    move-object/from16 v35, v26

    move/from16 v36, v20

    move/from16 v37, v5

    add-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v43, v35

    move-object/from16 v35, v43

    move-object/from16 v36, v43

    .line 789
    move-object/from16 v27, v36

    const/16 v36, 0x0

    move-object/from16 v37, v12

    move/from16 v38, v22

    aget v37, v37, v38

    aput v37, v35, v36

    .line 790
    move-object/from16 v35, v27

    const/16 v36, 0x1

    move-object/from16 v37, v13

    move/from16 v38, v22

    aget v37, v37, v38

    aput v37, v35, v36

    .line 791
    move-object/from16 v35, v27

    const/16 v36, 0x2

    move-object/from16 v37, v14

    move/from16 v38, v22

    aget v37, v37, v38

    aput v37, v35, v36

    .line 793
    move/from16 v35, v28

    move/from16 v36, v20

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v35, v35, v36

    move/from16 v21, v35

    .line 795
    move/from16 v35, v15

    move-object/from16 v36, v12

    move/from16 v37, v22

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v15, v35

    .line 796
    move/from16 v35, v16

    move-object/from16 v36, v13

    move/from16 v37, v22

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v16, v35

    .line 797
    move/from16 v35, v17

    move-object/from16 v36, v14

    move/from16 v37, v22

    aget v36, v36, v37

    move/from16 v37, v21

    mul-int v36, v36, v37

    add-int v35, v35, v36

    move/from16 v17, v35

    .line 799
    move/from16 v35, v20

    if-lez v35, :cond_9

    .line 800
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v32, v35

    .line 801
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v33, v35

    .line 802
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v34, v35

    .line 809
    :goto_8
    move/from16 v35, v20

    move/from16 v36, v9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_8

    .line 810
    move/from16 v35, v8

    move/from16 v36, v4

    add-int v35, v35, v36

    move/from16 v8, v35

    .line 784
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 804
    :cond_9
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v29, v35

    .line 805
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 806
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v31, v35

    goto :goto_8

    .line 813
    :cond_a
    move/from16 v35, v18

    move/from16 v22, v35

    .line 814
    move/from16 v35, v5

    move/from16 v20, v35

    .line 815
    const/16 v35, 0x0

    move/from16 v19, v35

    :goto_9
    move/from16 v35, v19

    move/from16 v36, v6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_c

    .line 817
    move-object/from16 v35, v7

    move/from16 v36, v22

    const/high16 v37, -0x1000000

    move-object/from16 v38, v7

    move/from16 v39, v22

    aget v38, v38, v39

    and-int v37, v37, v38

    move-object/from16 v38, v25

    move/from16 v39, v15

    aget v38, v38, v39

    const/16 v39, 0x10

    shl-int/lit8 v38, v38, 0x10

    or-int v37, v37, v38

    move-object/from16 v38, v25

    move/from16 v39, v16

    aget v38, v38, v39

    const/16 v39, 0x8

    shl-int/lit8 v38, v38, 0x8

    or-int v37, v37, v38

    move-object/from16 v38, v25

    move/from16 v39, v17

    aget v38, v38, v39

    or-int v37, v37, v38

    aput v37, v35, v36

    .line 819
    move/from16 v35, v15

    move/from16 v36, v29

    sub-int v35, v35, v36

    move/from16 v15, v35

    .line 820
    move/from16 v35, v16

    move/from16 v36, v30

    sub-int v35, v35, v36

    move/from16 v16, v35

    .line 821
    move/from16 v35, v17

    move/from16 v36, v31

    sub-int v35, v35, v36

    move/from16 v17, v35

    .line 823
    move/from16 v35, v20

    move/from16 v36, v5

    sub-int v35, v35, v36

    move/from16 v36, v11

    add-int v35, v35, v36

    move/from16 v21, v35

    .line 824
    move-object/from16 v35, v26

    move/from16 v36, v21

    move/from16 v37, v11

    rem-int v36, v36, v37

    aget-object v35, v35, v36

    move-object/from16 v27, v35

    .line 826
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v29, v35

    .line 827
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v30, v35

    .line 828
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v31, v35

    .line 830
    move/from16 v35, v18

    if-nez v35, :cond_b

    .line 831
    move-object/from16 v35, v24

    move/from16 v36, v19

    move/from16 v43, v36

    move/from16 v36, v43

    move/from16 v37, v43

    move/from16 v38, v28

    add-int v37, v37, v38

    move/from16 v38, v9

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v38, v4

    mul-int v37, v37, v38

    aput v37, v35, v36

    .line 833
    :cond_b
    move/from16 v35, v18

    move-object/from16 v36, v24

    move/from16 v37, v19

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v21, v35

    .line 835
    move-object/from16 v35, v27

    const/16 v36, 0x0

    move-object/from16 v37, v12

    move/from16 v38, v21

    aget v37, v37, v38

    aput v37, v35, v36

    .line 836
    move-object/from16 v35, v27

    const/16 v36, 0x1

    move-object/from16 v37, v13

    move/from16 v38, v21

    aget v37, v37, v38

    aput v37, v35, v36

    .line 837
    move-object/from16 v35, v27

    const/16 v36, 0x2

    move-object/from16 v37, v14

    move/from16 v38, v21

    aget v37, v37, v38

    aput v37, v35, v36

    .line 839
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v32, v35

    .line 840
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v33, v35

    .line 841
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v34, v35

    .line 843
    move/from16 v35, v15

    move/from16 v36, v32

    add-int v35, v35, v36

    move/from16 v15, v35

    .line 844
    move/from16 v35, v16

    move/from16 v36, v33

    add-int v35, v35, v36

    move/from16 v16, v35

    .line 845
    move/from16 v35, v17

    move/from16 v36, v34

    add-int v35, v35, v36

    move/from16 v17, v35

    .line 847
    move/from16 v35, v20

    const/16 v36, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v36, v11

    rem-int v35, v35, v36

    move/from16 v20, v35

    .line 848
    move-object/from16 v35, v26

    move/from16 v36, v20

    aget-object v35, v35, v36

    move-object/from16 v27, v35

    .line 850
    move/from16 v35, v29

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v29, v35

    .line 851
    move/from16 v35, v30

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v30, v35

    .line 852
    move/from16 v35, v31

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    add-int v35, v35, v36

    move/from16 v31, v35

    .line 854
    move/from16 v35, v32

    move-object/from16 v36, v27

    const/16 v37, 0x0

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v32, v35

    .line 855
    move/from16 v35, v33

    move-object/from16 v36, v27

    const/16 v37, 0x1

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v33, v35

    .line 856
    move/from16 v35, v34

    move-object/from16 v36, v27

    const/16 v37, 0x2

    aget v36, v36, v37

    sub-int v35, v35, v36

    move/from16 v34, v35

    .line 858
    move/from16 v35, v22

    move/from16 v36, v4

    add-int v35, v35, v36

    move/from16 v22, v35

    .line 815
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 781
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 862
    :cond_d
    const-string/jumbo v35, "ImageEditor"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v43, v36

    move-object/from16 v36, v43

    move-object/from16 v37, v43

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v4

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move/from16 v37, v6

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move/from16 v37, v10

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 863
    move-object/from16 v35, v3

    move-object/from16 v36, v7

    const/16 v37, 0x0

    move/from16 v38, v4

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v41, v4

    move/from16 v42, v6

    invoke-virtual/range {v35 .. v42}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 864
    move-object/from16 v35, v2

    move-object/from16 v36, v3

    invoke-direct/range {v35 .. v36}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v2, v35

    goto/16 :goto_0
.end method

.method public ColorBoostEffect(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Color boost technique is basically based on color filtering, which is to increase the intensity of a single color channel. For example: type = green/ blue or red; percent = 40%."
    .end annotation

    .prologue
    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v13, v0

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    .line 602
    move-object v1, v14

    if-nez v13, :cond_0

    const-string/jumbo v13, ""

    move-object v0, v13

    .line 632
    :goto_0
    return-object v0

    .line 604
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move v4, v13

    .line 605
    move-object v13, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move v5, v13

    .line 606
    move v13, v4

    move v14, v5

    move-object v15, v1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v6, v13

    .line 610
    const/4 v13, 0x0

    move v11, v13

    :goto_1
    move v13, v11

    move v14, v4

    if-ge v13, v14, :cond_5

    .line 611
    const/4 v13, 0x0

    move v12, v13

    :goto_2
    move v13, v12

    move v14, v5

    if-ge v13, v14, :cond_4

    .line 612
    move-object v13, v1

    move v14, v11

    move v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    move/from16 v20, v13

    move/from16 v13, v20

    move/from16 v14, v20

    .line 613
    move v10, v14

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    move v7, v13

    .line 614
    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    move v8, v13

    .line 615
    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    move v9, v13

    .line 616
    move v13, v10

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    move v10, v13

    .line 617
    move-object v13, v2

    const-string/jumbo v14, "red"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 618
    move v13, v8

    int-to-float v13, v13

    move v14, v3

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move/from16 v20, v13

    move/from16 v13, v20

    move/from16 v14, v20

    .line 619
    move v8, v14

    const/16 v14, 0xff

    if-le v13, v14, :cond_1

    const/16 v13, 0xff

    move v8, v13

    .line 629
    :cond_1
    :goto_3
    move-object v13, v6

    move v14, v11

    move v15, v12

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-static/range {v16 .. v19}, Landroid/graphics/Color;->argb(IIII)I

    move-result v16

    invoke-virtual/range {v13 .. v16}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 611
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 621
    :cond_2
    move-object v13, v2

    const-string/jumbo v14, "green"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 622
    move v13, v9

    int-to-float v13, v13

    move v14, v3

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move/from16 v20, v13

    move/from16 v13, v20

    move/from16 v14, v20

    .line 623
    move v9, v14

    const/16 v14, 0xff

    if-le v13, v14, :cond_1

    const/16 v13, 0xff

    move v9, v13

    goto :goto_3

    .line 625
    :cond_3
    move-object v13, v2

    const-string/jumbo v14, "blue"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 626
    move v13, v10

    int-to-float v13, v13

    move v14, v3

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move/from16 v20, v13

    move/from16 v13, v20

    move/from16 v14, v20

    .line 627
    move v10, v14

    const/16 v14, 0xff

    if-le v13, v14, :cond_1

    const/16 v13, 0xff

    move v10, v13

    goto :goto_3

    .line 610
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 632
    :cond_5
    move-object v13, v0

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public ColorFilter(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 28
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a color filter to your image. For example: red = 30; green = 40; blue = 20."
    .end annotation

    .prologue
    .line 294
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    .line 295
    move-object/from16 v4, v21

    if-nez v20, :cond_0

    const-string/jumbo v20, ""

    move-object/from16 v3, v20

    .line 315
    :goto_0
    return-object v3

    .line 297
    :cond_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v11, v20

    .line 298
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v12, v20

    .line 300
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v13, v20

    .line 304
    const/16 v20, 0x0

    move/from16 v18, v20

    :goto_1
    move/from16 v20, v18

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 305
    const/16 v20, 0x0

    move/from16 v19, v20

    :goto_2
    move/from16 v20, v19

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 306
    move-object/from16 v20, v4

    move/from16 v21, v18

    move/from16 v22, v19

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    .line 308
    move/from16 v17, v21

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v14, v20

    .line 309
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v5

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v15, v20

    .line 310
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v7

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v16, v20

    .line 311
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v9

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v17, v20

    .line 312
    move-object/from16 v20, v13

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    invoke-virtual/range {v20 .. v23}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 305
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 304
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 315
    :cond_2
    move-object/from16 v20, v3

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    goto/16 :goto_0
.end method

.method public FlipPicture(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Flip your image vertical or horizontal. For example: type = 1 (vertical); type = 2 (horizontal)."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    .line 187
    move-object v1, v5

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    move-object v0, v4

    .line 202
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v4, Landroid/graphics/Matrix;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v4

    .line 190
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 191
    move-object v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v4

    .line 200
    :goto_1
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 202
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 194
    :cond_1
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 195
    move-object v4, v3

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-result v4

    goto :goto_1

    .line 197
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public GammaEffect(Ljava/lang/String;DDD)Ljava/lang/String;
    .locals 30
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a gamma effect to your image. For example: red = 5; green = 10; blue = 20."
    .end annotation

    .prologue
    .line 409
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    .line 410
    move-object/from16 v3, v18

    if-nez v17, :cond_0

    const-string/jumbo v17, ""

    move-object/from16 v2, v17

    .line 451
    :goto_0
    return-object v2

    .line 412
    :cond_0
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v10, v17

    .line 414
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v11, v17

    .line 415
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v12, v17

    .line 425
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    .line 426
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v14, v17

    .line 427
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v15, v17

    .line 429
    const/16 v17, 0x0

    move/from16 v16, v17

    :goto_1
    move/from16 v17, v16

    const/16 v18, 0x100

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 430
    move-object/from16 v17, v13

    move/from16 v18, v16

    const/16 v19, 0xff

    const-wide v20, 0x406fe00000000000L    # 255.0

    move/from16 v22, v16

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x406fe00000000000L    # 255.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v4

    div-double v24, v24, v26

    .line 431
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 430
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    aput v19, v17, v18

    .line 432
    move-object/from16 v17, v14

    move/from16 v18, v16

    const/16 v19, 0xff

    const-wide v20, 0x406fe00000000000L    # 255.0

    move/from16 v22, v16

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x406fe00000000000L    # 255.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v6

    div-double v24, v24, v26

    .line 433
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 432
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    aput v19, v17, v18

    .line 434
    move-object/from16 v17, v15

    move/from16 v18, v16

    const/16 v19, 0xff

    const-wide v20, 0x406fe00000000000L    # 255.0

    move/from16 v22, v16

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x406fe00000000000L    # 255.0

    div-double v22, v22, v24

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    div-double v24, v24, v26

    .line 435
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    .line 434
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    aput v19, v17, v18

    .line 429
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 438
    :cond_1
    const/16 v17, 0x0

    move/from16 v16, v17

    :goto_2
    move/from16 v17, v16

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 439
    const/16 v17, 0x0

    move/from16 v8, v17

    :goto_3
    move/from16 v17, v8

    move/from16 v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 441
    move-object/from16 v17, v3

    move/from16 v18, v16

    move/from16 v19, v8

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    move/from16 v28, v17

    move/from16 v17, v28

    move/from16 v18, v28

    .line 442
    move/from16 v7, v18

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v17

    move/from16 v4, v17

    .line 444
    move-object/from16 v17, v13

    move/from16 v18, v7

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v18

    aget v17, v17, v18

    move/from16 v5, v17

    .line 445
    move-object/from16 v17, v14

    move/from16 v18, v7

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v18

    aget v17, v17, v18

    move/from16 v6, v17

    .line 446
    move-object/from16 v17, v15

    move/from16 v18, v7

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    aget v17, v17, v18

    move/from16 v7, v17

    .line 448
    move-object/from16 v17, v10

    move/from16 v18, v16

    move/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-static/range {v20 .. v23}, Landroid/graphics/Color;->argb(IIII)I

    move-result v20

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 439
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 438
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 451
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method public GreyscaleEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Grayscale is a simple image effect that changes colors to grayscale by default."
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    .line 147
    move-object v1, v10

    if-nez v9, :cond_0

    const-string/jumbo v9, ""

    move-object v0, v9

    .line 161
    :goto_0
    return-object v0

    .line 149
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move v2, v9

    .line 150
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v3, v9

    .line 151
    move v9, v2

    move v10, v3

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v4, v9

    .line 152
    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_2

    .line 153
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 154
    move-object v9, v1

    move v10, v5

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    move v13, v9

    move v9, v13

    move v10, v13

    .line 155
    move v7, v10

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    move v8, v9

    .line 156
    move v9, v7

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    move v10, v7

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int/2addr v9, v10

    move v10, v7

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x3

    div-int/lit8 v9, v9, 0x3

    move v7, v9

    .line 157
    move v9, v8

    move v10, v7

    move v13, v10

    move v10, v13

    move v11, v13

    move v12, v7

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    move v7, v9

    .line 158
    move-object v9, v4

    move v10, v5

    move v11, v6

    move v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 152
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 161
    :cond_2
    move-object v9, v0

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method public HighlightEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a highlight effect to your image."
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 387
    move-object v1, v8

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    move-object v0, v7

    .line 404
    :goto_0
    return-object v0

    .line 389
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/16 v8, 0x60

    add-int/lit8 v7, v7, 0x60

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v9, 0x60

    add-int/lit8 v8, v8, 0x60

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v2, v7

    .line 390
    new-instance v7, Landroid/graphics/Canvas;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 391
    move-object v3, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 393
    new-instance v7, Landroid/graphics/Paint;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 394
    move-object v4, v8

    new-instance v8, Landroid/graphics/BlurMaskFilter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/high16 v10, 0x41700000    # 15.0f

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    move-result-object v7

    .line 395
    const/4 v7, 0x2

    new-array v7, v7, [I

    move-object v5, v7

    .line 396
    move-object v7, v1

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v4, v7

    .line 397
    new-instance v7, Landroid/graphics/Paint;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    .line 398
    move-object v6, v8

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-float v9, v9

    move-object v10, v5

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 400
    move-object v7, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    move-object v7, v3

    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 404
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public HueFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the hue of an image. For example: level = 1 or 2 or 3 or 4 etc."
    .end annotation

    .prologue
    .line 490
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v10, v1

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    .line 491
    move-object v2, v11

    if-nez v10, :cond_0

    const-string/jumbo v10, ""

    move-object v1, v10

    .line 518
    :goto_0
    return-object v1

    .line 493
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move v4, v10

    .line 494
    move-object v10, v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move v5, v10

    .line 495
    move v10, v4

    move v11, v5

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    move-object v6, v10

    .line 496
    const/4 v10, 0x3

    new-array v10, v10, [F

    move-object v7, v10

    .line 498
    move-object v10, v2

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 502
    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v5

    if-ge v10, v11, :cond_2

    .line 503
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 505
    move v10, v8

    move v11, v4

    mul-int/2addr v10, v11

    move v11, v9

    add-int/2addr v10, v11

    move v2, v10

    .line 507
    move-object v10, v6

    move v11, v2

    aget v10, v10, v11

    move-object v11, v7

    invoke-static {v10, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 509
    move-object v10, v7

    const/4 v11, 0x0

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    aget v12, v12, v13

    move v13, v3

    int-to-float v13, v13

    mul-float/2addr v12, v13

    aput v12, v10, v11

    .line 510
    move-object v10, v7

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object v14, v7

    const/4 v15, 0x0

    aget v14, v14, v15

    float-to-double v14, v14

    const-wide v16, 0x4076800000000000L    # 360.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v10, v11

    .line 512
    move-object v10, v6

    move v11, v2

    move-object/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v18

    move/from16 v13, v19

    aget v12, v12, v13

    move-object v13, v7

    invoke-static {v13}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v13

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 503
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 502
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 516
    :cond_2
    move v10, v4

    move v11, v5

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    .line 517
    move-object v8, v11

    move-object v11, v6

    const/4 v12, 0x0

    move v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 518
    move-object v10, v1

    move-object v11, v8

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    goto/16 :goto_0
.end method

.method public ImageRotation(Ljava/lang/String;F)Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rotate the image to the degree you need it. For example: degree = 100."
    .end annotation

    .prologue
    .line 590
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    .line 591
    move-object v1, v5

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    move-object v0, v4

    .line 596
    :goto_0
    return-object v0

    .line 593
    :cond_0
    new-instance v4, Landroid/graphics/Matrix;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    .line 594
    move-object v3, v5

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-result v4

    .line 595
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 596
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public Initialize()V
    .locals 7

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageEditor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/ImageEditor$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/ImageEditor$1;-><init>(Lcom/google/appinventor/components/runtime/ImageEditor;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 95
    return-void
.end method

.method public InvertEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This effect inverts your image."
    .end annotation

    .prologue
    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    .line 246
    move-object v1, v12

    if-nez v11, :cond_0

    const-string/jumbo v11, ""

    move-object v0, v11

    .line 265
    :goto_0
    return-object v0

    .line 248
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v2, v11

    .line 252
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v7, v11

    .line 253
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v8, v11

    .line 255
    const/4 v11, 0x0

    move v9, v11

    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_2

    .line 256
    const/4 v11, 0x0

    move v10, v11

    :goto_2
    move v11, v10

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 257
    move-object v11, v1

    move v12, v10

    move v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    move/from16 v18, v11

    move/from16 v11, v18

    move/from16 v12, v18

    .line 258
    move v6, v12

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    move v3, v11

    .line 259
    const/16 v11, 0xff

    move v12, v6

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    rsub-int v11, v12, 0xff

    move v4, v11

    .line 260
    const/16 v11, 0xff

    move v12, v6

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    rsub-int v11, v12, 0xff

    move v5, v11

    .line 261
    const/16 v11, 0xff

    move v12, v6

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    rsub-int v11, v12, 0xff

    move v6, v11

    .line 262
    move-object v11, v2

    move v12, v10

    move v13, v9

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v14 .. v17}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 256
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 255
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 265
    :cond_2
    move-object v11, v0

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_0
.end method

.method public MergeTwoImages(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a new side by side horizontal image."
    .end annotation

    .prologue
    .line 893
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 894
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v2, v5

    .line 895
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, ""

    move-object v0, v5

    .line 918
    :goto_0
    return-object v0

    .line 900
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 901
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    .line 906
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 907
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v4, v5

    .line 912
    :goto_2
    move v5, v3

    move v6, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v3, v5

    .line 913
    new-instance v5, Landroid/graphics/Canvas;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 915
    move-object v4, v6

    move-object v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 916
    move-object v5, v4

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 918
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 903
    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    move v3, v5

    goto :goto_1

    .line 909
    :cond_3
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v4, v5

    goto :goto_2
.end method

.method public Pixelate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a pixelate image effect. Use as example as pixelation Amount \'1\' for a hugh pixel effect and \'99\' for a almost not visible pixel effect."
    .end annotation

    .prologue
    .line 869
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 870
    move-object v1, v6

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    move-object v0, v5

    .line 876
    :goto_0
    return-object v0

    .line 872
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move v3, v5

    .line 873
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v4, v5

    .line 874
    move-object v5, v1

    move v6, v3

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v7, v2

    mul-int/2addr v6, v7

    move v7, v4

    const/16 v8, 0x64

    div-int/lit8 v7, v7, 0x64

    move v8, v2

    mul-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    .line 876
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public RoundCorner(Ljava/lang/String;F)Ljava/lang/String;
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a round corner to your image. For example: round = 45."
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 362
    move-object v1, v9

    if-nez v8, :cond_0

    const-string/jumbo v8, ""

    move-object v0, v8

    .line 381
    :goto_0
    return-object v0

    .line 364
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v3, v8

    .line 365
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v4, v8

    .line 366
    move v8, v3

    move v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v5, v8

    .line 367
    new-instance v8, Landroid/graphics/Canvas;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v5

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 368
    move-object v6, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 370
    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    .line 371
    move-object v7, v9

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    move-object v8, v7

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    new-instance v8, Landroid/graphics/Rect;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v8

    .line 375
    new-instance v8, Landroid/graphics/RectF;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object v4, v8

    .line 377
    move-object v8, v6

    move-object v9, v4

    move v10, v2

    move v14, v10

    move v10, v14

    move v11, v14

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 378
    move-object v8, v7

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v8

    .line 379
    move-object v8, v6

    move-object v9, v1

    move-object v10, v3

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 381
    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public SaveNewImageAs()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Save the new created image to a folder/ name of your choice"
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ImageEditor;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public SaveNewImageAs(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "NewImage.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Save the new created image to a folder/ name of your choice."
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ImageEditor;->pgq50Ta8BOwqZ1x44UiPoTcDoRPiNHTTIb3Jgmceok7eFp2gi0sO4JRUukOMKqHH:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public ScaleCenterCrop(Ljava/lang/String;II)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This methods creates a new scale center crop image."
    .end annotation

    .prologue
    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    .line 638
    move-object v1, v9

    if-nez v8, :cond_0

    const-string/jumbo v8, ""

    move-object v0, v8

    .line 658
    :goto_0
    return-object v0

    .line 640
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move v4, v8

    .line 641
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move v5, v8

    .line 643
    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v6, v8

    .line 644
    move v8, v2

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 645
    move v8, v6

    move v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move v15, v8

    move v8, v15

    move v9, v15

    .line 647
    move v6, v9

    move v9, v4

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move v4, v8

    .line 648
    move v8, v6

    move v9, v5

    int-to-float v9, v9

    mul-float/2addr v8, v9

    move v5, v8

    .line 650
    move v8, v3

    int-to-float v8, v8

    move v9, v4

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move v6, v8

    .line 651
    move v8, v2

    int-to-float v8, v8

    move v9, v5

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    move v7, v8

    .line 653
    new-instance v8, Landroid/graphics/RectF;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v6

    move v11, v7

    move v12, v6

    move v13, v4

    add-float/2addr v12, v13

    move v13, v7

    move v14, v5

    add-float/2addr v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v4, v8

    .line 654
    move v8, v3

    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v2, v8

    .line 655
    new-instance v8, Landroid/graphics/Canvas;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v2

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 656
    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v4

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 658
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto :goto_0
.end method

.method public SepiaToningEffect(Ljava/lang/String;IDDD)Ljava/lang/String;
    .locals 29
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a sepia toning effect to your image. For example: depth = 20; red = 10; green = 20; blue = 25."
    .end annotation

    .prologue
    .line 320
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v27, v20

    move-object/from16 v20, v27

    move-object/from16 v21, v27

    .line 321
    move-object/from16 v3, v21

    if-nez v20, :cond_0

    const-string/jumbo v20, ""

    move-object/from16 v2, v20

    .line 356
    :goto_0
    return-object v2

    .line 323
    :cond_0
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v11, v20

    .line 324
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v12, v20

    .line 326
    move/from16 v20, v11

    move/from16 v21, v12

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v13, v20

    .line 333
    const/16 v20, 0x0

    move/from16 v18, v20

    :goto_1
    move/from16 v20, v18

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 334
    const/16 v20, 0x0

    move/from16 v19, v20

    :goto_2
    move/from16 v20, v19

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 336
    move-object/from16 v20, v3

    move/from16 v21, v18

    move/from16 v22, v19

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    .line 338
    move/from16 v17, v21

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v14, v20

    .line 339
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v15, v20

    .line 340
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v16, v20

    .line 341
    move/from16 v20, v17

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v17, v20

    .line 343
    const-wide v20, 0x3fd3333333333333L    # 0.3

    move/from16 v22, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x3fe2e147ae147ae1L    # 0.59

    move/from16 v24, v16

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    const-wide v22, 0x3fbc28f5c28f5c29L    # 0.11

    move/from16 v24, v17

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    move/from16 v15, v21

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    move/from16 v16, v21

    move/from16 v17, v20

    .line 345
    move/from16 v20, v15

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v5

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    .line 346
    move/from16 v15, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    const/16 v20, 0xff

    move/from16 v15, v20

    .line 348
    :cond_1
    move/from16 v20, v16

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v7

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    .line 349
    move/from16 v16, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0xff

    move/from16 v16, v20

    .line 351
    :cond_2
    move/from16 v20, v17

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v9

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v27, v20

    move/from16 v20, v27

    move/from16 v21, v27

    .line 352
    move/from16 v17, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/16 v20, 0xff

    move/from16 v17, v20

    .line 353
    :cond_3
    move-object/from16 v20, v13

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    invoke-static/range {v23 .. v26}, Landroid/graphics/Color;->argb(IIII)I

    move-result v23

    invoke-virtual/range {v20 .. v23}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 334
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 333
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 356
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public SetBrightness(Ljava/lang/String;I)Ljava/lang/String;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the brightness of your image. For example: value = 50 (maximum = 255=100% brightness)."
    .end annotation

    .prologue
    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    .line 208
    move-object v1, v13

    if-nez v12, :cond_0

    const-string/jumbo v12, ""

    move-object v0, v12

    .line 240
    :goto_0
    return-object v0

    .line 210
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move v3, v12

    .line 211
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move v4, v12

    .line 213
    move v12, v3

    move v13, v4

    move-object v14, v1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v5, v12

    .line 217
    const/4 v12, 0x0

    move v10, v12

    :goto_1
    move v12, v10

    move v13, v3

    if-ge v12, v13, :cond_8

    .line 218
    const/4 v12, 0x0

    move v11, v12

    :goto_2
    move v12, v11

    move v13, v4

    if-ge v12, v13, :cond_7

    .line 219
    move-object v12, v1

    move v13, v10

    move v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 220
    move v9, v13

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    move v6, v12

    .line 221
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    move v7, v12

    .line 222
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    move v8, v12

    .line 223
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    move v9, v12

    .line 225
    move v12, v7

    move v13, v2

    add-int/2addr v12, v13

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 226
    move v7, v13

    const/16 v13, 0xff

    if-le v12, v13, :cond_4

    const/16 v12, 0xff

    move v7, v12

    .line 229
    :cond_1
    :goto_3
    move v12, v8

    move v13, v2

    add-int/2addr v12, v13

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 230
    move v8, v13

    const/16 v13, 0xff

    if-le v12, v13, :cond_5

    const/16 v12, 0xff

    move v8, v12

    .line 233
    :cond_2
    :goto_4
    move v12, v9

    move v13, v2

    add-int/2addr v12, v13

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 234
    move v9, v13

    const/16 v13, 0xff

    if-le v12, v13, :cond_6

    const/16 v12, 0xff

    move v9, v12

    .line 237
    :cond_3
    :goto_5
    move-object v12, v5

    move v13, v10

    move v14, v11

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v15 .. v18}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 218
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 227
    :cond_4
    move v12, v7

    if-gez v12, :cond_1

    const/4 v12, 0x0

    move v7, v12

    goto :goto_3

    .line 231
    :cond_5
    move v12, v8

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move v8, v12

    goto :goto_4

    .line 235
    :cond_6
    move v12, v9

    if-gez v12, :cond_3

    const/4 v12, 0x0

    move v9, v12

    goto :goto_5

    .line 217
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 240
    :cond_8
    move-object v12, v0

    move-object v13, v5

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public SetColorDepth(Ljava/lang/String;I)Ljava/lang/String;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the color depth of an image as you wish. For example: bitOffset = 32 (bit) or bitOffset = 16 (bit)."
    .end annotation

    .prologue
    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    .line 457
    move-object v1, v13

    if-nez v12, :cond_0

    const-string/jumbo v12, ""

    move-object v0, v12

    .line 485
    :goto_0
    return-object v0

    .line 459
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move v3, v12

    .line 460
    move-object v12, v1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move v4, v12

    .line 462
    move v12, v3

    move v13, v4

    move-object v14, v1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v5, v12

    .line 467
    const/4 v12, 0x0

    move v10, v12

    :goto_1
    move v12, v10

    move v13, v3

    if-ge v12, v13, :cond_5

    .line 468
    const/4 v12, 0x0

    move v11, v12

    :goto_2
    move v12, v11

    move v13, v4

    if-ge v12, v13, :cond_4

    .line 469
    move-object v12, v1

    move v13, v10

    move v14, v11

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 470
    move v9, v13

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    move v6, v12

    .line 471
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    move v7, v12

    .line 472
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    move v8, v12

    .line 473
    move v12, v9

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    move v9, v12

    .line 475
    move v12, v7

    move v13, v2

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v7

    move v14, v2

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move v14, v2

    rem-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 476
    move v7, v13

    if-gez v12, :cond_1

    const/4 v12, 0x0

    move v7, v12

    .line 477
    :cond_1
    move v12, v8

    move v13, v2

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v8

    move v14, v2

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move v14, v2

    rem-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 478
    move v8, v13

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move v8, v12

    .line 479
    :cond_2
    move v12, v9

    move v13, v2

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v9

    move v14, v2

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move v14, v2

    rem-int/2addr v13, v14

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move/from16 v19, v12

    move/from16 v12, v19

    move/from16 v13, v19

    .line 480
    move v9, v13

    if-gez v12, :cond_3

    const/4 v12, 0x0

    move v9, v12

    .line 482
    :cond_3
    move-object v12, v5

    move v13, v10

    move v14, v11

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v15 .. v18}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 468
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 467
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 485
    :cond_5
    move-object v12, v0

    move-object v13, v5

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public SetContrast(Ljava/lang/String;F)Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This changes the contrast of your image. For example: value = 1.0 means normal picture contrast. Below 1.0 like as example 0.7 means dark contrast, above 1.0 as example 1.5 means light contrast."
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 167
    move-object v1, v7

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    move-object v0, v6

    .line 181
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v6, Landroid/graphics/ColorMatrix;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x14

    new-array v8, v8, [F

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move v11, v2

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x6

    move v11, v2

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xa

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xc

    move v11, v2

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xd

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xe

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xf

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x10

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x11

    const/4 v11, 0x0

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x12

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x13

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-direct {v7, v8}, Landroid/graphics/ColorMatrix;-><init>([F)V

    move-object v2, v6

    .line 175
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 176
    new-instance v6, Landroid/graphics/Canvas;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v6

    .line 177
    new-instance v6, Landroid/graphics/Paint;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 178
    move-object v5, v7

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v6

    .line 179
    move-object v6, v4

    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public ShadingFilter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make a new image with a shading filter. For example: shadingColor = green(rgb value)."
    .end annotation

    .prologue
    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    .line 271
    move-object v1, v10

    if-nez v9, :cond_0

    const-string/jumbo v9, ""

    move-object v0, v9

    .line 289
    :goto_0
    return-object v0

    .line 273
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move v3, v9

    .line 274
    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v4, v9

    .line 275
    move v9, v3

    move v10, v4

    mul-int/2addr v9, v10

    new-array v9, v9, [I

    move-object v5, v9

    .line 277
    move-object v9, v1

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 280
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v4

    if-ge v9, v10, :cond_2

    .line 281
    const/4 v9, 0x0

    move v8, v9

    :goto_2
    move v9, v8

    move v10, v3

    if-ge v9, v10, :cond_1

    .line 282
    move v9, v7

    move v10, v3

    mul-int/2addr v9, v10

    move v10, v8

    add-int/2addr v9, v10

    move v6, v9

    .line 283
    move-object v9, v5

    move v10, v6

    move-object/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v11, v17

    move/from16 v12, v18

    aget v11, v11, v12

    move v12, v2

    and-int/2addr v11, v12

    aput v11, v9, v10

    .line 281
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 280
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 287
    :cond_2
    move v9, v3

    move v10, v4

    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    .line 288
    move-object v7, v10

    move-object v10, v5

    const/4 v11, 0x0

    move v12, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v3

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 289
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_0
.end method

.method public TintColorEffect(Ljava/lang/String;I)Ljava/lang/String;
    .locals 29
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "That\'s a pretty new other cool effect. It changes the tint color of your image. For example: degree = 100."
    .end annotation

    .prologue
    .line 546
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 547
    move-object/from16 v4, v21

    if-nez v20, :cond_0

    const-string/jumbo v20, ""

    move-object/from16 v3, v20

    .line 585
    :goto_0
    return-object v3

    .line 549
    :cond_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v6, v20

    .line 550
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v7, v20

    .line 552
    move/from16 v20, v6

    move/from16 v21, v7

    mul-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v8, v20

    .line 553
    move-object/from16 v20, v4

    move-object/from16 v21, v8

    const/16 v22, 0x0

    move/from16 v23, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 556
    const-wide v20, 0x400921f9f01b866eL    # 3.14159

    move/from16 v22, v5

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    const-wide v22, 0x4066800000000000L    # 180.0

    div-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 558
    const-wide/high16 v20, 0x4070000000000000L    # 256.0

    move-wide/from16 v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v12, v20

    .line 559
    const-wide/high16 v20, 0x4070000000000000L    # 256.0

    move-wide/from16 v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v13, v20

    .line 561
    const/16 v20, 0x0

    move/from16 v14, v20

    :goto_1
    move/from16 v20, v14

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 562
    const/16 v20, 0x0

    move/from16 v15, v20

    :goto_2
    move/from16 v20, v15

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 563
    move/from16 v20, v14

    move/from16 v21, v6

    mul-int v20, v20, v21

    move/from16 v21, v15

    add-int v20, v20, v21

    move/from16 v16, v20

    .line 564
    move-object/from16 v20, v8

    move/from16 v21, v16

    aget v20, v20, v21

    const/16 v21, 0x10

    shr-int/lit8 v20, v20, 0x10

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v10, v20

    .line 565
    move-object/from16 v20, v8

    move/from16 v21, v16

    aget v20, v20, v21

    const/16 v21, 0x8

    shr-int/lit8 v20, v20, 0x8

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v11, v20

    .line 566
    move-object/from16 v20, v8

    move/from16 v21, v16

    aget v20, v20, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v17, v20

    .line 567
    move/from16 v20, v10

    const/16 v21, 0x46

    mul-int/lit8 v20, v20, 0x46

    move/from16 v21, v11

    const/16 v22, 0x3b

    mul-int/lit8 v21, v21, 0x3b

    sub-int v20, v20, v21

    move/from16 v21, v17

    const/16 v22, 0xb

    mul-int/lit8 v21, v21, 0xb

    sub-int v20, v20, v21

    const/16 v21, 0x64

    div-int/lit8 v20, v20, 0x64

    move/from16 v5, v20

    .line 568
    move/from16 v20, v10

    const/16 v21, -0x1e

    mul-int/lit8 v20, v20, -0x1e

    move/from16 v21, v11

    const/16 v22, 0x3b

    mul-int/lit8 v21, v21, 0x3b

    sub-int v20, v20, v21

    move/from16 v21, v17

    const/16 v22, 0x59

    mul-int/lit8 v21, v21, 0x59

    add-int v20, v20, v21

    const/16 v21, 0x64

    div-int/lit8 v20, v20, 0x64

    move/from16 v9, v20

    .line 569
    move/from16 v20, v10

    const/16 v21, 0x1e

    mul-int/lit8 v20, v20, 0x1e

    move/from16 v21, v11

    const/16 v22, 0x3b

    mul-int/lit8 v21, v21, 0x3b

    add-int v20, v20, v21

    move/from16 v21, v17

    const/16 v22, 0xb

    mul-int/lit8 v21, v21, 0xb

    add-int v20, v20, v21

    const/16 v21, 0x64

    div-int/lit8 v20, v20, 0x64

    move/from16 v11, v20

    .line 570
    move/from16 v20, v12

    move/from16 v21, v9

    mul-int v20, v20, v21

    move/from16 v21, v13

    move/from16 v22, v5

    mul-int v21, v21, v22

    add-int v20, v20, v21

    const/16 v21, 0x100

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v10, v20

    .line 571
    move/from16 v20, v13

    move/from16 v21, v9

    mul-int v20, v20, v21

    move/from16 v21, v12

    move/from16 v22, v5

    mul-int v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x100

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    move/from16 v9, v20

    .line 572
    move/from16 v20, v10

    const/16 v21, -0x33

    mul-int/lit8 v20, v20, -0x33

    move/from16 v21, v9

    const/16 v22, 0x13

    mul-int/lit8 v21, v21, 0x13

    sub-int v20, v20, v21

    const/16 v21, 0x64

    div-int/lit8 v20, v20, 0x64

    move/from16 v5, v20

    .line 573
    move/from16 v20, v11

    move/from16 v21, v10

    add-int v20, v20, v21

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 574
    move/from16 v10, v21

    if-gez v20, :cond_1

    const/16 v20, 0x0

    :goto_3
    move/from16 v10, v20

    .line 575
    move/from16 v20, v11

    move/from16 v21, v5

    add-int v20, v20, v21

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 576
    move/from16 v5, v21

    if-gez v20, :cond_3

    const/16 v20, 0x0

    :goto_4
    move/from16 v5, v20

    .line 577
    move/from16 v20, v11

    move/from16 v21, v9

    add-int v20, v20, v21

    move/from16 v28, v20

    move/from16 v20, v28

    move/from16 v21, v28

    .line 578
    move/from16 v9, v21

    if-gez v20, :cond_5

    const/16 v20, 0x0

    :goto_5
    move/from16 v9, v20

    .line 579
    move-object/from16 v20, v8

    move/from16 v21, v16

    const/high16 v22, -0x1000000

    move/from16 v23, v10

    const/16 v24, 0x10

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    move/from16 v23, v5

    const/16 v24, 0x8

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    move/from16 v23, v9

    or-int v22, v22, v23

    aput v22, v20, v21

    .line 562
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 574
    :cond_1
    move/from16 v20, v10

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/16 v20, 0xff

    goto :goto_3

    :cond_2
    move/from16 v20, v10

    goto :goto_3

    .line 576
    :cond_3
    move/from16 v20, v5

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    const/16 v20, 0xff

    goto :goto_4

    :cond_4
    move/from16 v20, v5

    goto :goto_4

    .line 578
    :cond_5
    move/from16 v20, v9

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    const/16 v20, 0xff

    goto :goto_5

    :cond_6
    move/from16 v20, v9

    goto :goto_5

    .line 561
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 582
    :cond_8
    move/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    .line 583
    move-object/from16 v14, v21

    move-object/from16 v21, v8

    const/16 v22, 0x0

    move/from16 v23, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v6

    move/from16 v27, v7

    invoke-virtual/range {v20 .. v27}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 585
    move-object/from16 v20, v3

    move-object/from16 v21, v14

    invoke-direct/range {v20 .. v21}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    goto/16 :goto_0
.end method

.method public WatermarkEffect(Ljava/lang/String;Ljava/lang/String;IIZIII)Ljava/lang/String;
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a watermark effect to an image and change the positon/size or color of the text. For example: text = hello; textSize = 25; textColor = red(rgb value); textAlphaValue = 255 (255= 100% visible,127.5= 50% visible, 0= 0% visible); pointX = 50; pointY = 100; text underline(boolean) = true or false."
    .end annotation

    .prologue
    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v11, v0

    move-object v12, v1

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 524
    move-object v1, v12

    if-nez v11, :cond_0

    const-string/jumbo v11, ""

    move-object v0, v11

    .line 541
    :goto_0
    return-object v0

    .line 526
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move v9, v11

    .line 527
    move-object v11, v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move v10, v11

    .line 528
    move v11, v9

    move v12, v10

    move-object v13, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object v9, v11

    .line 530
    new-instance v11, Landroid/graphics/Canvas;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v9

    invoke-direct {v12, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 531
    move-object v10, v12

    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 533
    new-instance v11, Landroid/graphics/Paint;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    .line 534
    move-object v1, v12

    move v12, v4

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    move-object v11, v1

    move v12, v6

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 536
    move-object v11, v1

    move v12, v3

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 537
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 538
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 539
    move-object v11, v10

    move-object v12, v2

    move v13, v7

    int-to-float v13, v13

    move v14, v8

    int-to-float v14, v14

    move-object v15, v1

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    move-object v11, v0

    move-object v12, v9

    invoke-direct {v11, v12}, Lcom/google/appinventor/components/runtime/ImageEditor;->SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_0
.end method

.method public isLandscape(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in landscape format, else return false."
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 924
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isPortrait(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in portrait format, else return false."
    .end annotation

    .prologue
    .line 929
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 930
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isSquare(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return true if image is in square format (means as high as wide or as wide as high), else return false."
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/ImageEditor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 936
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
