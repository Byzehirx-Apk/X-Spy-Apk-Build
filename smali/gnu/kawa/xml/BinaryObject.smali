.class public abstract Lgnu/kawa/xml/BinaryObject;
.super Ljava/lang/Object;
.source "BinaryObject.java"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/BinaryObject;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/BinaryObject;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/BinaryObject;->data:[B

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/BinaryObject;
    return-object v0
.end method
