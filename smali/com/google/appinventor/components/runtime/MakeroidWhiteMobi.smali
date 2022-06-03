.class public Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "WhiteMobi component"
    helpUrl = "https://docs.kodular.io/components/monetization/whitemobi/"
    iconName = "images/whitemobi.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "gson.jar",
        "whitemobisdk.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->context:Landroid/content/Context;

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 56
    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;)V

    invoke-static {v2}, Lcom/white/mobi/sdk/WMManager;->setRewardListener(Lcom/white/mobi/sdk/IRewardsListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public ApplicationKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the application key."
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ApplicationKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public OfferCompleted(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when an offer has been completed"
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OfferCompleted"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 84
    return-void
.end method

.method public ShowOfferWall()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show WhiteMobi offerwall"
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Ljava/lang/String;

    invoke-static {v1}, Lcom/white/mobi/sdk/WMManager;->showOfferWall(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lcom/white/mobi/sdk/WMManager;->onPause()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/white/mobi/sdk/WMManager;->onResume(Landroid/content/Context;)V

    .line 92
    return-void
.end method
