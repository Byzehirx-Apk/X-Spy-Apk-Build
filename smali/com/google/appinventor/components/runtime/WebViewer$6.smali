.class final Lcom/google/appinventor/components/runtime/WebViewer$6;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 1013
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    move-object v3, v0

    invoke-direct {v3}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 14

    .prologue
    .line 1016
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v5, v2

    move-object v3, v5

    .line 1017
    move-object v5, v1

    move-object v4, v5

    .line 1018
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/WebViewer;->PromptforPermission()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1019
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/WebViewer$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 1020
    move-object v2, v6

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getPermissionTitleString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1021
    move-object v5, v1

    const-string/jumbo v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1022
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getPermissionApplicationString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 1024
    :cond_0
    move-object v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getPermissionMessageString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1025
    move-object v5, v2

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getPermissionAllowString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/appinventor/components/runtime/WebViewer$6$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/WebViewer$6$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1031
    move-object v5, v2

    const/4 v6, -0x2

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->getPermissionDeniedString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/appinventor/components/runtime/WebViewer$6$2;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/WebViewer$6$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewer$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1037
    move-object v5, v2

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1038
    .line 1041
    :goto_0
    return-void

    .line 1040
    :cond_1
    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 1041
    goto :goto_0
.end method
