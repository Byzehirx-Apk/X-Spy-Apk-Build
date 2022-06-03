.class public Lgnu/text/FlushFormat;
.super Lgnu/text/ReportFormat;
.source "FlushFormat.java"


# static fields
.field private static flush:Lgnu/text/FlushFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "this":Lgnu/text/FlushFormat;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/text/FlushFormat;
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lgnu/text/FlushFormat;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/text/FlushFormat;-><init>()V

    sput-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    .line 15
    :cond_0
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/text/FlushFormat;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move-object v3, p3

    .local v3, "dst":Ljava/io/Writer;
    move-object v4, p4

    .local v4, "fpos":Ljava/text/FieldPosition;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 22
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lgnu/text/FlushFormat;
    return v0
.end method
