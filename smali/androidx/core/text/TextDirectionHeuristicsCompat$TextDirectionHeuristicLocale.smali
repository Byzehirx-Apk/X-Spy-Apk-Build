.class Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
.super Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicLocale"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;-><init>()V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V

    .line 246
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    move v1, v2

    .line 251
    .local v1, "dir":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    return v0

    .restart local v0    # "this":Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
