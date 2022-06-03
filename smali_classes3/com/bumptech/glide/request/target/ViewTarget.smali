.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTarget"

.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:Ljava/lang/Integer;


# instance fields
.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v1, p1

    .local v1, "view":Landroid/view/View;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 75
    move-object v2, v1

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "View must not be null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 79
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v3, v2, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 80
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 150
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 152
    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v2, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    sget-object v2, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 141
    const/4 v2, 0x1

    sput-boolean v2, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 142
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v3, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTagId(I)V
    .locals 5

    .prologue
    .line 67
    move v0, p0

    .local v0, "tagId":I
    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "You cannot set the tag id more than once or change the tag id after the first request has been made"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    move v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    .line 72
    return-void
.end method


# virtual methods
.method public getRequest()Lcom/bumptech/glide/request/Request;
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/bumptech/glide/request/target/ViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 128
    .local v1, "tag":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v2, v3

    .line 129
    .local v2, "request":Lcom/bumptech/glide/request/Request;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v1

    instance-of v3, v3, Lcom/bumptech/glide/request/Request;

    if-eqz v3, :cond_1

    .line 131
    move-object v3, v1

    check-cast v3, Lcom/bumptech/glide/request/Request;

    move-object v2, v3

    .line 136
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    return-object v0

    .line 133
    .restart local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v1, p1

    .local v1, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 101
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    return-object v0
.end method

.method public setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    move-object v1, p1

    .local v1, "request":Lcom/bumptech/glide/request/Request;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/bumptech/glide/request/target/ViewTarget;->setTag(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    return-object v0
.end method
