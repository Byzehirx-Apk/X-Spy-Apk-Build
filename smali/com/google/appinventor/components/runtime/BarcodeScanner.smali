.class public Lcom/google/appinventor/components/runtime/BarcodeScanner;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    iconName = "images/barcodeScanner.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            name = "com.google.zxing.client.android.AppInvCaptureActivity"
            screenOrientation = "portrait"
            stateNotNeeded = "true"
            theme = "@android:style/Theme.NoTitleBar.Fullscreen"
            windowSoftInputMode = "stateAlwaysHidden"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "Barcode.jar",
        "QRGenerator.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.CAMERA"
    }
.end annotation


# instance fields
.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Z

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 63
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Z

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    .line 79
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 80
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BarcodeScanner;)Z
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterScan"

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

    .line 151
    return-void
.end method

.method public DoScan()V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Begins a barcode scan, using the camera. When the scan is complete, the AfterScan event will be raised."
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    new-instance v3, Landroid/content/Intent;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "com.google.zxing.client.android.SCAN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 99
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 101
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    if-nez v3, :cond_0

    .line 102
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string/jumbo v4, "android.permission.CAMERA"

    new-instance v5, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;-><init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V

    .line 103
    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 116
    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 119
    move-object v3, v1

    new-instance v4, Landroid/content/ComponentName;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v2

    const-string/jumbo v7, "com.google.zxing.client.android.AppInvCaptureActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 121
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-nez v3, :cond_2

    .line 122
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    .line 125
    :cond_2
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    const-string/jumbo v5, "BarcodeScanner"

    const/16 v6, 0x5dd

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 131
    goto :goto_0
.end method

.method public Result()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text result of the previous scan."
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BarcodeScanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public UseExternalScanner(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/BarcodeScanner;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Z

    .line 181
    return-void
.end method

.method public UseExternalScanner()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true App Inventor will look for and use an external scanning program such as \"Bar Code Scanner.\""
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/BarcodeScanner;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Z

    move v0, v1

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 135
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-ne v4, v5, :cond_0

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 136
    move-object v4, v3

    const-string/jumbo v5, "SCAN_RESULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    move-object v4, v0

    move-object v5, v3

    const-string/jumbo v6, "SCAN_RESULT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/BarcodeScanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    .line 141
    :goto_0
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/BarcodeScanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void

    .line 139
    :cond_1
    move-object v4, v0

    const-string/jumbo v5, ""

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/BarcodeScanner;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/lang/String;

    goto :goto_0
.end method
