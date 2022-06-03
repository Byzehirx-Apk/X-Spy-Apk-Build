.class public final Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamilyFilesResourceEntry"
.end annotation


# instance fields
.field private final mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V
    .locals 4
    .param p1    # [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move-object v1, p1

    .local v1, "entries":[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 154
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 155
    return-void
.end method


# virtual methods
.method public getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    return-object v0
.end method
