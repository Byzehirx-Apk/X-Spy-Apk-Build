.class final Landroidx/core/provider/FontsContractCompat$TypefaceResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypefaceResult"
.end annotation


# instance fields
.field final mResult:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 5
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    move-object v1, p1

    .local v1, "typeface":Landroid/graphics/Typeface;
    move v2, p2

    .local v2, "result":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 214
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    .line 215
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    .line 216
    return-void
.end method
