.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolderItem"
.end annotation


# instance fields
.field mIcon:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter$ViewHolderItem;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
