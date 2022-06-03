.class Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroidx/core/graphics/TypefaceCompatBaseImpl$StyleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;I)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
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
        "Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/graphics/TypefaceCompatBaseImpl;


# direct methods
.method constructor <init>(Landroidx/core/graphics/TypefaceCompatBaseImpl;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    move-object v1, p1

    .local v1, "this$0":Landroidx/core/graphics/TypefaceCompatBaseImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;->this$0:Landroidx/core/graphics/TypefaceCompatBaseImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeight(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    move-object v1, p1

    .local v1, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    return v0
.end method

.method public bridge synthetic getWeight(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;->getWeight(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    return v0
.end method

.method public isItalic(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    move-object v1, p1

    .local v1, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v2, v1

    invoke-virtual {v2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    return v0
.end method

.method public bridge synthetic isItalic(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-virtual {v2, v3}, Landroidx/core/graphics/TypefaceCompatBaseImpl$2;->isItalic(Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/graphics/TypefaceCompatBaseImpl$2;
    return v0
.end method
