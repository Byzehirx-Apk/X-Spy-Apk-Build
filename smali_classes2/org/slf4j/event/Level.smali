.class public final enum Lorg/slf4j/event/Level;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/slf4j/event/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/slf4j/event/Level;

.field public static final enum DEBUG:Lorg/slf4j/event/Level;

.field public static final enum ERROR:Lorg/slf4j/event/Level;

.field public static final enum INFO:Lorg/slf4j/event/Level;

.field public static final enum TRACE:Lorg/slf4j/event/Level;

.field public static final enum WARN:Lorg/slf4j/event/Level;


# instance fields
.field private levelInt:I

.field private levelStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 16
    new-instance v0, Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "ERROR"

    const/4 v3, 0x0

    const/16 v4, 0x28

    const-string/jumbo v5, "ERROR"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "WARN"

    const/4 v3, 0x1

    const/16 v4, 0x1e

    const-string/jumbo v5, "WARN"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "INFO"

    const/4 v3, 0x2

    const/16 v4, 0x14

    const-string/jumbo v5, "INFO"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "DEBUG"

    const/4 v3, 0x3

    const/16 v4, 0xa

    const-string/jumbo v5, "DEBUG"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    new-instance v0, Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string/jumbo v2, "TRACE"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string/jumbo v5, "TRACE"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/slf4j/event/Level;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/slf4j/event/Level;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    sget-object v3, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x2

    sget-object v3, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x3

    sget-object v3, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    aput-object v3, v1, v2

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x4

    sget-object v3, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    aput-object v3, v1, v2

    sput-object v0, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/Level;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "i":I
    move-object v4, p4

    .local v4, "s":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/slf4j/event/Level;->levelInt:I

    .line 23
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/slf4j/event/Level;
    .locals 3

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lorg/slf4j/event/Level;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/slf4j/event/Level;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lorg/slf4j/event/Level;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->$VALUES:[Lorg/slf4j/event/Level;

    invoke-virtual {v0}, [Lorg/slf4j/event/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/slf4j/event/Level;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/Level;
    move-object v1, v0

    iget v1, v1, Lorg/slf4j/event/Level;->levelInt:I

    move v0, v1

    .end local v0    # "this":Lorg/slf4j/event/Level;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/event/Level;
    move-object v1, v0

    iget-object v1, v1, Lorg/slf4j/event/Level;->levelStr:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lorg/slf4j/event/Level;
    return-object v0
.end method
