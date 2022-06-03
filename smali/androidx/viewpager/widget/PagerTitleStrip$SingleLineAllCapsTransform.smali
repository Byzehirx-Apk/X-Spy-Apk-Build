.class Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
.super Landroid/text/method/SingleLineTransformationMethod;
.source "PagerTitleStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleLineAllCapsTransform"
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, v2, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    .line 95
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    move-object v1, p1

    .local v1, "source":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 100
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    return-object v0

    .restart local v0    # "this":Landroidx/viewpager/widget/PagerTitleStrip$SingleLineAllCapsTransform;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
