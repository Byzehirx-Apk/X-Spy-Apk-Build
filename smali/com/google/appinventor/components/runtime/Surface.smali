.class public final Lcom/google/appinventor/components/runtime/Surface;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/layout/surface-view/"
    iconName = "images/surface.png"
    version = 0x2
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


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private cameraID:I

.field private clickable:Z

.field private context:Landroid/content/Context;

.field private faceDetect:Z

.field private havePermission:Z

.field private horizontalAlignment:I

.field private isPause:Z

.field private isPlaying:Z

.field private isStop:Z

.field private final mainLayout:Landroid/view/ViewGroup;

.field private myCamera:Landroid/hardware/Camera;

.field private pm:Landroid/content/pm/PackageManager;

.field private sHolder:Landroid/view/SurfaceHolder;

.field private saveAsFile:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private useBackCamera:Z

.field private useFlashlight:Z

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 68
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->clickable:Z

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    .line 79
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    .line 80
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    .line 81
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 84
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 88
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I

    .line 89
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->activity:Landroid/app/Activity;

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    .line 99
    move-object v2, v0

    new-instance v3, Landroid/view/SurfaceView;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    .line 100
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 102
    move-object v2, v0

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    .line 104
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    const/4 v6, 0x1

    const/16 v7, 0x64

    .line 105
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    .line 106
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 108
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 110
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 114
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 121
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 123
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Surface;->Clickable(Z)V

    .line 124
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Surface;->FaceDetection(Z)V

    .line 125
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Surface;->SavePreviewAsFile(Z)V

    .line 126
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Surface;->UseBackCamera(Z)V

    .line 128
    const-string/jumbo v2, "Surface"

    const-string/jumbo v3, "Surface Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 129
    return-void
.end method

.method private DestroySurface()V
    .locals 3

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 477
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 478
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 479
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 480
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 481
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    .line 483
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/Surface;Z)Z
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Surface;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Surface;->loadTakePicture()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Surface;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Surface;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/Surface;->loadStartPreview()V

    return-void
.end method

.method private loadStartPreview()V
    .locals 8

    .prologue
    .line 407
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    .line 409
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 410
    move-object v1, v4

    const-string/jumbo v4, "continuous-picture"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 411
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 412
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Surface;->previewHelper()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 413
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 414
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 415
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 416
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .line 447
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 418
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "StartPreview"

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 421
    goto :goto_0

    .line 419
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 420
    const-string/jumbo v3, "Surface"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 421
    goto :goto_0

    .line 423
    :cond_0
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    .line 424
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Surface;->previewHelper()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 426
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    move-object v1, v3

    .line 428
    move-object v3, v1

    :try_start_2
    const-string/jumbo v4, "continuous-picture"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 431
    .line 432
    :goto_1
    move-object v3, v0

    :try_start_3
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 433
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 434
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 437
    .line 438
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 439
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 440
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 441
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 442
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    if-eqz v3, :cond_1

    .line 443
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 444
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 447
    :cond_1
    goto/16 :goto_0

    .line 429
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 430
    :try_start_4
    const-string/jumbo v3, "Surface"

    move-object v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    goto :goto_1

    .line 435
    :catch_3
    move-exception v3

    move-object v1, v3

    .line 436
    const-string/jumbo v3, "Surface"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method

.method private loadTakePicture()V
    .locals 7

    .prologue
    .line 300
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 301
    new-instance v2, Lcom/google/appinventor/components/runtime/Surface$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/Surface$4;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    move-object v1, v2

    .line 330
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .line 335
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 332
    const-string/jumbo v2, "Surface"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 335
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public final $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 149
    return-void
.end method

.method public final $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method public final $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final AlignHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .prologue
    .line 599
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I

    move v0, v1

    return v0
.end method

.method public final AlignHorizontal(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 585
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .line 590
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "HorizontalAlignment"

    const/16 v5, 0x579

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 588
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 587
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 590
    goto :goto_0
.end method

.method public final AlignVertical(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 609
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 610
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .line 615
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "VerticalAlignment"

    const/16 v5, 0x57a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 613
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 612
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 615
    goto :goto_0
.end method

.method public final Clickable(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the surface view component clickable or not clickable."
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->clickable:Z

    .line 498
    move v2, v1

    if-eqz v2, :cond_0

    .line 499
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 500
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    new-instance v3, Lcom/google/appinventor/components/runtime/Surface$6;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Surface$6;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    new-instance v3, Lcom/google/appinventor/components/runtime/Surface$7;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Surface$7;-><init>(Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 518
    :goto_0
    return-void

    .line 514
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 516
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->surfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 518
    goto :goto_0
.end method

.method public final Clicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect clicks on the camera preview."
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Clicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 523
    return-void
.end method

.method public final FaceDetected(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that there are faces in the front of the camera."
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "FaceDetected"

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

    .line 560
    return-void
.end method

.method public final FaceDetection(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you can detect how many faces are in the front of the camera."
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    .line 357
    return-void
.end method

.method public final FaceDetection()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Face Detection property status."
    .end annotation

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Surface;->faceDetect:Z

    move v0, v1

    return v0
.end method

.method public final Flashlight(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Turn on or off the device flashlight. The function knows automatic if there is a flash/ torch available."
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move-object v2, v4

    .line 362
    move v4, v1

    if-eqz v4, :cond_0

    .line 364
    move-object v4, v2

    :try_start_0
    const-string/jumbo v5, "torch"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .line 375
    :goto_0
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    .line 376
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 377
    return-void

    .line 365
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 366
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 367
    goto :goto_0

    .line 370
    :cond_0
    move-object v4, v2

    :try_start_1
    const-string/jumbo v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    goto :goto_0

    .line 371
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 372
    const-string/jumbo v4, "Surface"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public final Flashlight()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Flashlight property status."
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Surface;->useFlashlight:Z

    move v0, v1

    return v0
.end method

.method public final GotPreview(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the response from the camera preview as image file. The picture is by default in landscape mode. This event will only work if the option \"Save Preview As File\" is enabled/ true."
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotPreview"

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

    .line 542
    return-void
.end method

.method public final Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 209
    const/4 v2, -0x2

    move v1, v2

    .line 211
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 212
    return-void
.end method

.method public final LongClicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect long clicks on the camera preview."
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 528
    return-void
.end method

.method public final PausePreview()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause the camera preview."
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 452
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 453
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 454
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 455
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 456
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Surface;->PreviewPaused()V

    .line 458
    :cond_0
    return-void
.end method

.method public final PictureCreated(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has taken a picture from the preview."
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PictureCreated"

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

    .line 534
    return-void
.end method

.method public final PreviewPaused()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user paused the camera preview."
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "PreviewPaused"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 548
    return-void
.end method

.method public final PreviewStoped()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user stopped the camera preview."
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "PreviewStoped"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 554
    return-void
.end method

.method public final SavePreviewAsFile(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable this block to enable the \"Got Preview\" event to get a image file from the camera preview."
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    .line 491
    return-void
.end method

.method public final StartPreview()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the camera preview."
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    if-nez v2, :cond_0

    .line 382
    move-object v2, v0

    move-object v1, v2

    .line 383
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Surface$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Surface$5;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Surface;->loadStartPreview()V

    .line 404
    goto :goto_0
.end method

.method public final StopPreview()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the camera preview."
    .end annotation

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 463
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 464
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 465
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 466
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 467
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    .line 468
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    .line 469
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isPause:Z

    .line 470
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Surface;->isStop:Z

    .line 471
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Surface;->PreviewStoped()V

    .line 473
    :cond_0
    return-void
.end method

.method public final TakePicture()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a picture from the camera preview."
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Surface;->havePermission:Z

    if-nez v2, :cond_0

    .line 275
    move-object v2, v0

    move-object v1, v2

    .line 276
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Surface;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Surface$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Surface$3;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/Surface;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Surface;->loadTakePicture()V

    .line 297
    goto :goto_0
.end method

.method public final UseBackCamera(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will open the back camera for the camera preview, else you open the front camera. The block detect automatic if there is a device camera available or not."
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 341
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 343
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    .line 351
    :goto_0
    return-void

    .line 346
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android.hardware.camera.front"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Surface;->cameraID:I

    .line 348
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    .line 351
    :cond_1
    goto :goto_0
.end method

.method public final UseBackCamera()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Use Back Camera property status."
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Surface;->useBackCamera:Z

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 200
    const/4 v2, -0x2

    move v1, v2

    .line 202
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 203
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Surface;->mainLayout:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public final onDestroy()V
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/Surface;->DestroySurface()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .line 625
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 623
    const-string/jumbo v2, "Surface"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 625
    goto :goto_0
.end method

.method public final onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 8

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Surface;->FaceDetected(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v3, "Surface"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "Faces Detected = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 270
    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Surface;->saveAsFile:Z

    if-eqz v4, :cond_1

    .line 245
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 246
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move-object v2, v4

    .line 251
    move-object v4, v2

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    move-object v3, v4

    .line 252
    new-instance v4, Landroid/graphics/YuvImage;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    move-object v8, v3

    iget v8, v8, Landroid/hardware/Camera$Size;->width:I

    move-object v9, v3

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object v1, v4

    .line 254
    new-instance v4, Ljava/io/File;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/preMak.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 255
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 256
    move-object v4, v1

    new-instance v5, Landroid/graphics/Rect;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x64

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v4

    .line 257
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Surface;->GotPreview(Ljava/lang/String;)V

    .line 262
    .line 264
    :goto_0
    return-void

    .line 248
    :cond_0
    move-object v4, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Surface;->GotPreview(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    goto :goto_0

    .line 258
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 259
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    move-object v5, v0

    const-string/jumbo v6, "Surface"

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 262
    goto :goto_0

    .line 260
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 261
    const-string/jumbo v4, "Surface"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 264
    :cond_1
    goto :goto_0
.end method

.method public final previewHelper()I
    .locals 6

    .prologue
    .line 629
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 630
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 631
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->context:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    .line 632
    move-object v2, v4

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-nez v3, :cond_0

    .line 633
    const/16 v3, 0x5a

    move v1, v3

    .line 636
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 637
    const/4 v3, 0x0

    move v1, v3

    .line 640
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 641
    const/16 v3, 0x10e

    move v1, v3

    .line 644
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 645
    const/16 v3, 0xb4

    move v1, v3

    .line 647
    :cond_3
    move v3, v1

    move v0, v3

    return v0
.end method

.method public final setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 177
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 178
    move v3, v5

    if-nez v4, :cond_0

    .line 180
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Surface$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Surface$2;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 187
    :cond_0
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 188
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 190
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 191
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 192
    return-void
.end method

.method public final setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Surface;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 154
    return-void
.end method

.method public final setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 14

    .prologue
    .line 157
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Surface;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v6

    move v13, v6

    move v6, v13

    move v7, v13

    .line 158
    move v5, v7

    if-nez v6, :cond_0

    move v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 160
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Surface;->androidUIHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/appinventor/components/runtime/Surface$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Surface$1;-><init>(Lcom/google/appinventor/components/runtime/Surface;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 167
    :cond_0
    move v6, v3

    const/16 v7, -0x3e8

    if-gt v6, v7, :cond_1

    .line 168
    move v6, v5

    move v7, v3

    const/16 v8, -0x3e8

    add-int/lit16 v7, v7, 0x3e8

    neg-int v7, v7

    mul-int/2addr v6, v7

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v3, v6

    .line 170
    :cond_1
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 171
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 172
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Surface;->isPlaying:Z

    if-eqz v5, :cond_0

    .line 218
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Surface;->StartPreview()V

    .line 220
    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Surface;->myCamera:Landroid/hardware/Camera;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Surface;->sHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .line 233
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 230
    const-string/jumbo v2, "Surface"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 233
    :cond_0
    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method
