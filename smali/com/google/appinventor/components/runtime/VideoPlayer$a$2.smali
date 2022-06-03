.class final Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

.field private synthetic gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

.field private synthetic hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:I

.field private synthetic rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V
    .locals 7

    .prologue
    .line 774
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:I

    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:I

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 777
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/VideoPlayer$a;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->hZhaRgwkBZwejuAnnYABoWeuzwSnVTS6FhaE0jegMWisoVYsWwdasjmLDosamQJe:I

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/VideoPlayer$a$2;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/VideoPlayer$a;III)V

    .line 778
    return-void
.end method
