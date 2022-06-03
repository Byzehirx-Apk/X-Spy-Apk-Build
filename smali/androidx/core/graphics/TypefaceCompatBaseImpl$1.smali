.class Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor",
        "<",
        "Landroidx/core/provider/FontsContractCompat$FontInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;->this$0:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Landroidx/core/provider/FontsContractCompat$FontInfo;)I
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    move-object v1, p1

    .local v1, "info":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    return v0
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;->getWeight(Landroidx/core/provider/FontsContractCompat$FontInfo;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    return v0
.end method

.method public isItalic(Landroidx/core/provider/FontsContractCompat$FontInfo;)Z
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    move-object v1, p1

    .local v1, "info":Landroidx/core/provider/FontsContractCompat$FontInfo;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    return v0
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl$1;->isItalic(Landroidx/core/provider/FontsContractCompat$FontInfo;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$1;
    return v0
.end method
