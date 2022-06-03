.class public Lorg/slf4j/MDC$MDCCloseable;
.super Ljava/lang/Object;
.source "MDC.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slf4j/MDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDCCloseable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/MDC$MDCCloseable;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/slf4j/MDC$MDCCloseable;->key:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/slf4j/MDC$1;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/MDC$MDCCloseable;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move-object v2, p2

    .local v2, "x1":Lorg/slf4j/MDC$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/slf4j/MDC$MDCCloseable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/MDC$MDCCloseable;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/MDC$MDCCloseable;->key:Ljava/lang/String;

    invoke-static {v1}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 82
    return-void
.end method
