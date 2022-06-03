.class public final Landroidx/core/view/inputmethod/InputContentInfoCompat;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;,
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;,
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 11
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ClipDescription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, p1

    .local v1, "contentUri":Landroid/net/Uri;
    move-object v2, p2

    .local v2, "description":Landroid/content/ClipDescription;
    move-object v3, p3

    .local v3, "linkUri":Landroid/net/Uri;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 170
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-lt v4, v5, :cond_0

    .line 171
    move-object v4, v0

    new-instance v5, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v5, v4, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    move-object v4, v0

    new-instance v5, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v5, v4, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>(Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V
    .locals 4
    .param p1    # Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, p1

    .local v1, "impl":Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 178
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 179
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "inputContentInfo":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 220
    const/4 v1, 0x0

    move-object v0, v1

    .line 225
    .end local v0    # "inputContentInfo":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 222
    .restart local v0    # "inputContentInfo":Ljava/lang/Object;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    .line 223
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 225
    :cond_1
    new-instance v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    return-object v0
.end method

.method public releasePermission()V
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->releasePermission()V

    .line 257
    return-void
.end method

.method public requestPermission()V
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V

    .line 248
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    return-object v0
.end method
