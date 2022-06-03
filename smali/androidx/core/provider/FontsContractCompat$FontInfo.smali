.class public Landroidx/core/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x3e8L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move v2, p2

    .local v2, "ttcIndex":I
    move v3, p3

    .local v3, "weight":I
    move v4, p4

    .local v4, "italic":Z
    move v5, p5

    .local v5, "resultCode":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 348
    move-object v6, v0

    move-object v7, v1

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 349
    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 350
    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 351
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 352
    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 353
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, v0

    iget v1, v1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    return v0
.end method

.method public getTtcIndex()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, v0

    iget v1, v1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    return-object v0
.end method

.method public getWeight()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
        to = 0x3e8L
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, v0

    iget v1, v1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    return v0
.end method

.method public isItalic()Z
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontInfo;
    return v0
.end method
