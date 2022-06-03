.class public Landroidx/appcompat/text/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/text/AllCapsTransformationMethod;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, v2, Landroidx/appcompat/text/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 39
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/text/AllCapsTransformationMethod;
    move-object v1, p1

    .local v1, "source":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/text/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/text/AllCapsTransformationMethod;
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/text/AllCapsTransformationMethod;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    return-void
.end method
