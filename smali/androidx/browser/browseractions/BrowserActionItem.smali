.class public Landroidx/browser/browseractions/BrowserActionItem;
.super Ljava/lang/Object;
.source "BrowserActionItem.java"


# instance fields
.field private final mAction:Landroid/app/PendingIntent;

.field private final mIconId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "action":Landroid/app/PendingIntent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/browser/browseractions/BrowserActionItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "action":Landroid/app/PendingIntent;
    move v3, p3

    .local v3, "iconId":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    .line 43
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    .line 44
    move-object v4, v0

    move v5, v3

    iput v5, v4, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/browseractions/BrowserActionItem;->mAction:Landroid/app/PendingIntent;

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionItem;
    return-object v0
.end method

.method public getIconId()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v1, v0

    iget v1, v1, Landroidx/browser/browseractions/BrowserActionItem;->mIconId:I

    move v0, v1

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionItem;
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionItem;
    move-object v1, v0

    iget-object v1, v1, Landroidx/browser/browseractions/BrowserActionItem;->mTitle:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/browser/browseractions/BrowserActionItem;
    return-object v0
.end method
