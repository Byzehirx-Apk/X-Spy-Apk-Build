.class public Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# static fields
.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_UNEXPECTED_DATA_PROVIDED:I = 0x2

.field public static final STATUS_WRONG_CERTIFICATES:I = 0x1


# instance fields
.field private final mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V
    .locals 5
    .param p2    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    move v1, p1

    .local v1, "statusCode":I
    move-object v2, p2

    .local v2, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 429
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 430
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 431
    return-void
.end method


# virtual methods
.method public getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    move-object v1, v0

    iget v1, v1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    move v0, v1

    .end local v0    # "this":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    return v0
.end method
