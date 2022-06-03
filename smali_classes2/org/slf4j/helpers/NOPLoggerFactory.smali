.class public Lorg/slf4j/helpers/NOPLoggerFactory;
.super Ljava/lang/Object;
.source "NOPLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NOPLoggerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lorg/slf4j/helpers/NOPLoggerFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    sget-object v2, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    move-object v0, v2

    .end local v0    # "this":Lorg/slf4j/helpers/NOPLoggerFactory;
    return-object v0
.end method
