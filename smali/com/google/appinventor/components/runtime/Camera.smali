.class public Lcom/google/appinventor/components/runtime/Camera;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to take a picture using the device\'s camera. After the picture is taken, the name of the file on the phone containing the picture is available as an argument to the AfterPicture event. The file name can be used, for example, to set the Picture property of an Image component."
    iconName = "images/camera.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.CAMERA",
        "android.permission.FLASHLIGHT"
    }
.end annotation


# instance fields
.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Z

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

.field private havePermission:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

.field private requestCode:I

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    .line 59
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    .line 66
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 67
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 69
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "android.hardware.camera.flash"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Z

    .line 70
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Camera;->UseFront(Z)V

    .line 71
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Camera Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Camera;)Z
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AfterPicture(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the taken picture."
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterPicture"

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

    .line 165
    return-void
.end method

.method public HasFlash()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if your device has a flash."
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Camera;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Z

    move v0, v1

    return v0
.end method

.method public TakePicture()V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a picture with the camera of your device."
    .end annotation

    .prologue
    .line 88
    move-object v1, p0

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    if-nez v4, :cond_0

    .line 89
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v5, Lcom/google/appinventor/components/runtime/Camera$1;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v1

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "TakePicture"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const-string/jumbo v13, "android.permission.CAMERA"

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const-string/jumbo v13, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v13, v11, v12

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/Camera$1;-><init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 97
    .line 130
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 100
    const-string/jumbo v4, "mounted"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    const-string/jumbo v4, "Camera"

    const-string/jumbo v5, "External storage is available and writable"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 103
    new-instance v4, Ljava/io/File;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "/Pictures"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    .line 104
    move-object v2, v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v4

    .line 108
    :cond_1
    new-instance v4, Ljava/io/File;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string/jumbo v9, "/Pictures/kodular_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 109
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    .line 110
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object v2, v4

    .line 111
    new-instance v4, Landroid/content/Intent;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    .line 112
    move-object v3, v5

    const-string/jumbo v5, "output"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 113
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-gt v4, v5, :cond_2

    .line 114
    move-object v4, v3

    const-string/jumbo v5, ""

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 115
    move-object v4, v3

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 116
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 118
    :cond_2
    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    if-eqz v4, :cond_3

    .line 119
    move-object v4, v3

    const-string/jumbo v5, "android.intent.extras.CAMERA_FACING"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 121
    :cond_3
    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-nez v4, :cond_4

    .line 122
    move-object v4, v1

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v5

    iput v5, v4, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    .line 124
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    move-object v5, v3

    move-object v6, v1

    iget v6, v6, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "mounted_ro"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 126
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0x2c0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 128
    :cond_6
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0x2c1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 130
    goto/16 :goto_0
.end method

.method public ToggleLight()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle the flash of your device to on or off."
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Camera;->havePermission:Z

    if-nez v2, :cond_0

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "android.permission.CAMERA"

    new-instance v4, Lcom/google/appinventor/components/runtime/Camera$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Camera$2;-><init>(Lcom/google/appinventor/components/runtime/Camera;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 183
    .line 209
    :goto_0
    return-void

    .line 186
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Camera;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

    if-eqz v2, :cond_2

    .line 187
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 190
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    .line 192
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z

    .line 193
    goto :goto_0

    .line 196
    :cond_2
    move-object v2, v0

    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    .line 197
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    .line 198
    move-object v1, v3

    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 199
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 201
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 202
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 204
    const-string/jumbo v2, "Camera"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 205
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    const-string/jumbo v4, "ToggleLight"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    goto/16 :goto_0

    .line 206
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 207
    const-string/jumbo v2, "Camera"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    goto/16 :goto_0
.end method

.method public UseFront(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the front-facing camera should be used (when available). If the device does not have a front-facing camera, this option will be ignored and the camera will open normally."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    .line 84
    return-void
.end method

.method public UseFront()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Z

    move v0, v1

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    .line 133
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    const-string/jumbo v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Returning result. Request code = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", result code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 134
    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/Camera;->requestCode:I

    if-ne v4, v5, :cond_3

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 135
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    new-instance v4, Ljava/io/File;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 137
    move-object v1, v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    move-object v1, v4

    .line 139
    move-object v4, v0

    move-object v5, v1

    move-object v2, v5

    move-object v1, v4

    .line 1155
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1156
    new-instance v4, Landroid/content/Intent;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 1157
    move-object v3, v5

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 1158
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    :cond_0
    const-string/jumbo v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Calling Camera.AfterPicture with image path "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 141
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Camera;->AfterPicture(Ljava/lang/String;)V

    .line 142
    .line 146
    :goto_0
    move-object v4, v0

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Camera;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/lang/String;

    .line 147
    .line 152
    :goto_1
    return-void

    .line 143
    :cond_1
    const-string/jumbo v4, "CameraComponent"

    const-string/jumbo v5, "Couldn\'t find an image file from the Camera result"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 144
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0xc9

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_2
    const-string/jumbo v4, "CameraComponent"

    const-string/jumbo v5, "Couldn\'t find an image file from the Camera result"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 149
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Camera;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "TakePicture"

    const/16 v7, 0xc9

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 152
    :cond_3
    goto :goto_1
.end method
