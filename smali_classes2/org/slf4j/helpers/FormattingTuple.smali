.class public Lorg/slf4j/helpers/FormattingTuple;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field public static NULL:Lorg/slf4j/helpers/FormattingTuple;


# instance fields
.field private argArray:[Ljava/lang/Object;

.field private message:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/slf4j/helpers/FormattingTuple;->NULL:Lorg/slf4j/helpers/FormattingTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/FormattingTuple;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/FormattingTuple;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "argArray":[Ljava/lang/Object;
    move-object v3, p3

    .local v3, "throwable":Ljava/lang/Throwable;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    .line 46
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    .line 47
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/FormattingTuple;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/FormattingTuple;
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/FormattingTuple;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/FormattingTuple;
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/FormattingTuple;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/helpers/FormattingTuple;
    return-object v0
.end method
