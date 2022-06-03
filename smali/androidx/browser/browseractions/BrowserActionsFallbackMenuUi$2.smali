.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

.field final synthetic val$urlTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->this$0:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    .line 111
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;->val$urlTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
