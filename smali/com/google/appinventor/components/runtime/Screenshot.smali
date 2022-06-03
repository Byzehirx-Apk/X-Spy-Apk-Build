.class public Lcom/google/appinventor/components/runtime/Screenshot;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/screenshot.png"
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Screenshot$a;
    }
.end annotation


# instance fields
.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

.field private NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

.field private TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private dimAmount:F

.field private eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

.field private hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

.field private nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

.field private uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

.field private wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

.field private wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 65
    move-object v3, v0

    const-string/jumbo v4, "Screenshot.png"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    .line 70
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    .line 72
    move-object v3, v0

    const-string/jumbo v4, "Screenshot.."

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    .line 73
    move-object v3, v0

    const-string/jumbo v4, "Share"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    .line 74
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    .line 85
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    .line 86
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    .line 88
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    .line 89
    move-object v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    .line 90
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v1, v3

    .line 91
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 92
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.permission.READ_EXTERNAL_STORAGE"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    .line 93
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 95
    move-object v3, v0

    new-instance v4, Landroid/media/MediaActionSound;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Screenshot;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaActionSound;->load(I)V

    .line 99
    :cond_0
    const-string/jumbo v3, "Screenshot"

    const-string/jumbo v4, "Screenshot Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 100
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Landroid/media/MediaActionSound;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaActionSound;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)V
    .locals 13

    .prologue
    .line 60
    move-object v1, p0

    move-object v6, v1

    .line 1276
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 1280
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v6

    .line 1282
    new-instance v6, Landroid/widget/LinearLayout;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 1283
    new-instance v6, Landroid/widget/ImageView;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 1284
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1286
    move-object v6, v1

    move-object v5, v6

    .line 1324
    const/16 v6, 0x1e

    move-object v7, v5

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0xa0

    div-int/lit16 v7, v7, 0xa0

    div-int/2addr v6, v7

    .line 1286
    move v5, v6

    .line 1287
    move-object v6, v3

    move v7, v5

    move v12, v7

    move v7, v12

    move v8, v12

    move v9, v5

    move v12, v9

    move v9, v12

    move v10, v12

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1289
    move-object v6, v3

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1290
    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Screenshot;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1291
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1293
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1294
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1295
    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1297
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1298
    move-object v2, v7

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1300
    new-instance v6, Landroid/util/DisplayMetrics;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v3, v6

    .line 1301
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1303
    move-object v6, v3

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move v3, v6

    .line 1305
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1306
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1307
    move-object v4, v7

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1308
    move-object v6, v4

    move v7, v3

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1309
    move-object v6, v2

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1312
    :cond_0
    new-instance v6, Ljava/util/Timer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1313
    move-object v4, v7

    new-instance v7, Lcom/google/appinventor/components/runtime/Screenshot$2;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/Screenshot$2;-><init>(Lcom/google/appinventor/components/runtime/Screenshot;Landroid/app/AlertDialog;Ljava/util/Timer;)V

    const-wide/16 v8, 0x4e2

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 60
    :cond_1
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    move v0, v1

    return v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    move v0, v1

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Screenshot;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Screenshot;)Z
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public AllowScreenshots(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This feature allows users of your app to make or ban screenshots of their app. If disabled and a person tries to make a screenshot, they will receive then a default system message that this is not possible."
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 269
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Screenshot;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 273
    goto :goto_0
.end method

.method public DimAmount()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 365
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    move v0, v1

    return v0
.end method

.method public DimAmount(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.5"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the amount of dim behind the preview window if ShowPreview(...) is enabled. Use \'0.0\' for no dim and \'1.0\' for full dim."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->dimAmount:F

    .line 361
    return-void
.end method

.method public FileName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the given screenshot filename."
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public FileName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Screenshot.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will be the name for the taken screenshot image file."
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public GotScreenshot(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a screenshot was made by the user. Returns the image path to the taken screenshot."
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "GotScreenshot"

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

    .line 159
    return-void
.end method

.method public NotificationBigStyle(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will display the notification in a big style."
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    .line 256
    return-void
.end method

.method public NotificationBigStyle()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification big style option status."
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    move v0, v1

    return v0
.end method

.method public NotificationShareButton(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a notification with a share button after the screenshot is taken."
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    .line 348
    return-void
.end method

.method public NotificationShareButton()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    move v0, v1

    return v0
.end method

.method public NotificationShareTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification share button text."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public NotificationShareTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Share"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will set the notification share button text if the option \"Show Notification\" is enabled."
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->uB4tu69UCQ2bAIAJLxBrazJ0pEJF4D6biU0hi2lcEJLr1A0KTbjBgSa8eZhiikvR:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public NotificationTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the notification title."
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public NotificationTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Screenshot.."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This will set the notification title if the option \"Show Notification\" is enabled. "
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->wOjOOBWoVyNzDzaWXgy1S9rRvmLqhYagLoPiKuHlw4Kpu5E5zVoSLSrwTs2bXyKG:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public SaveUtil(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 175
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v4

    .line 176
    move-object v4, v1

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    .line 177
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

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Screenshot;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/Screenshot;->eCKrLERXZY2Z3jwuVt55PeHUkE4lFRkPVtMcgtoMaoQxt1GsNCdNb2NNztke1B7i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 179
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 180
    move-object v2, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 181
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 183
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    .line 184
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Screenshot;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    .line 185
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v1, v4

    .line 195
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .line 185
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .line 204
    :goto_1
    return-object v0

    .line 197
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 198
    const-string/jumbo v4, "Screenshot"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 186
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 187
    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Screenshot;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    const-string/jumbo v6, "TakeScreenshot"

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 195
    move-object v4, v2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 199
    .line 202
    :cond_0
    :goto_2
    move-object v4, v0

    const-string/jumbo v5, "ERROR"

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Screenshot;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:Ljava/lang/String;

    .line 203
    move-object v4, v0

    const-string/jumbo v5, "ERROR"

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Screenshot;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:Ljava/lang/String;

    .line 204
    const-string/jumbo v4, "ERROR"

    move-object v0, v4

    goto :goto_1

    .line 197
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 198
    const-string/jumbo v4, "Screenshot"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 199
    goto :goto_2

    .line 188
    :catch_3
    move-exception v4

    move-object v3, v4

    .line 189
    :try_start_4
    const-string/jumbo v4, "Screenshot"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    .line 193
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 195
    move-object v4, v2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 199
    goto :goto_2

    .line 197
    :catch_4
    move-exception v4

    move-object v3, v4

    .line 198
    const-string/jumbo v4, "Screenshot"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 199
    goto :goto_2

    .line 190
    :catch_5
    move-exception v4

    move-object v3, v4

    .line 191
    :try_start_6
    const-string/jumbo v4, "Screenshot"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    .line 193
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 195
    move-object v4, v2

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 199
    goto :goto_2

    .line 197
    :catch_6
    move-exception v4

    move-object v3, v4

    .line 198
    const-string/jumbo v4, "Screenshot"

    move-object v5, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 199
    goto :goto_2

    .line 193
    :catchall_0
    move-exception v4

    move-object v1, v4

    move-object v4, v2

    if-eqz v4, :cond_1

    .line 195
    move-object v4, v2

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    move-object v4, v2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 199
    .line 201
    :cond_1
    :goto_3
    move-object v4, v1

    throw v4

    .line 197
    :catch_7
    move-exception v4

    move-object v2, v4

    .line 198
    const-string/jumbo v4, "Screenshot"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_3
.end method

.method public ShowNotification(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a notification in the statusbar after the screenshot is taken."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    .line 222
    return-void
.end method

.method public ShowNotification()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \"Show Notification\" is enabled."
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    move v0, v1

    return v0
.end method

.method public ShowPreview(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled you will see a short preview animation after the screenshot is taken."
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Screenshot;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    .line 211
    return-void
.end method

.method public ShowPreview()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if \"Show Preview\" is enabled."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    move v0, v1

    return v0
.end method

.method public TakeScreenshot()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a screenshot of the current visible screen."
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/Screenshot$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Screenshot$1;-><init>(Lcom/google/appinventor/components/runtime/Screenshot;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 114
    return-void
.end method

.method public arePermissionsGranted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the write and read permission is granted, else false."
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isReadPermissionGranted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the read permission is granted, else false."
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isWritePermissionGranted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the write permission is granted, else false."
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/Screenshot;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
