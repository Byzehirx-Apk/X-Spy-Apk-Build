.class Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory2Wrapper"
.end annotation


# instance fields
.field final mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;


# direct methods
.method constructor <init>(Landroidx/core/view/LayoutInflaterFactory;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    move-object v1, p1

    .local v1, "delegateFactory":Landroidx/core/view/LayoutInflaterFactory;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    .line 45
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    move-object v1, p1

    .local v1, "parent":Landroid/view/View;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    move-object v4, p4

    .local v4, "attributeSet":Landroid/util/AttributeSet;
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroidx/core/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "attrs":Landroid/util/AttributeSet;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v4, v5, v6, v7, v8}, Landroidx/core/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    return-object v0
.end method
