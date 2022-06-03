.class public Lgnu/text/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# static fields
.field public static final nullReader:Lgnu/text/NullReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    new-instance v0, Lgnu/text/NullReader;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/text/NullReader;-><init>()V

    sput-object v0, Lgnu/text/NullReader;->nullReader:Lgnu/text/NullReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/text/NullReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public read([CII)I
    .locals 5

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/text/NullReader;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    const/4 v4, -0x1

    move v0, v4

    .end local v0    # "this":Lgnu/text/NullReader;
    return v0
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/text/NullReader;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/text/NullReader;
    return v0
.end method
