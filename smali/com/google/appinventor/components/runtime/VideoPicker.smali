.class public Lcom/google/appinventor/components/runtime/VideoPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A special-purpose button. When the user taps an video picker, the device\'s video gallery appears, and the user can choose an video."
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 37
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPicker;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    .line 48
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPicker;->context:Landroid/content/Context;

    .line 49
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/VideoPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 50
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPicker;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v5

    move-object v2, v3

    .line 111
    new-instance v3, Landroidx/loader/content/CursorLoader;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker;->context:Landroid/content/Context;

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    .line 113
    move-object v1, v4

    if-eqz v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_0
    move v2, v3

    .line 114
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 115
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    .line 117
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 119
    :goto_1
    return-object v0

    .line 113
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 117
    :cond_2
    const-string/jumbo v3, "ERROR"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    .line 118
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public Selection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Path to the file containing the video that was selected."
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPicker;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public click()V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v3, Lcom/google/appinventor/components/runtime/VideoPicker$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/VideoPicker$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPicker;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 76
    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    new-instance v1, Landroid/content/Intent;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker;->requestCode:I

    if-ne v4, v5, :cond_0

    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 102
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v1, v4

    .line 103
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/VideoPicker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/VideoPicker;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    .line 104
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/VideoPicker;->sWkWFQQIaGTTPJU7vuPeCDLKqn4jxxxmuDj72oHwiIsFNDjkPpdypuJP0f6vFa3B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/VideoPicker;->AfterPicking(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method
