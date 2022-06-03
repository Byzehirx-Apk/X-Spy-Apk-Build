.class Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;
.super Landroidx/arch/core/internal/SafeIterableMap$ListIterator;
.source "SafeIterableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/internal/SafeIterableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AscendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/arch/core/internal/SafeIterableMap$ListIterator",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    move-object v1, p1

    .local v1, "start":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    move-object v2, p2

    .local v2, "expectedEnd":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;)V

    .line 284
    return-void
.end method


# virtual methods
.method backward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    move-object v2, v1

    iget-object v2, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-object v0, v2

    .end local v0    # "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    return-object v0
.end method

.method forward(Landroidx/arch/core/internal/SafeIterableMap$Entry;)Landroidx/arch/core/internal/SafeIterableMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;)",
            "Landroidx/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    move-object v1, p1

    .local v1, "entry":Landroidx/arch/core/internal/SafeIterableMap$Entry;, "Landroidx/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    move-object v2, v1

    iget-object v2, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    move-object v0, v2

    .end local v0    # "this":Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;, "Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator<TK;TV;>;"
    return-object v0
.end method
