.class public Lorg/jose4j/json/internal/json_simple/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a3L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move v1, p1

    .local v1, "errorType":I
    move-object v2, v0

    const/4 v3, -0x1

    move v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "errorType":I
    move-object v3, p3

    .local v3, "unexpectedObject":Ljava/lang/Object;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 29
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    .line 30
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    .line 31
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move v1, p1

    .local v1, "errorType":I
    move-object v2, p2

    .local v2, "unexpectedObject":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, -0x1

    move v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 74
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget v2, v2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    packed-switch v2, :pswitch_data_0

    .line 85
    move-object v2, v1

    const-string/jumbo v3, "Unknown error at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    return-object v0

    .line 76
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    :pswitch_0
    move-object v2, v1

    const-string/jumbo v3, "Unexpected character ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    move-object v2, v1

    const-string/jumbo v3, "Unexpected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    goto :goto_0

    .line 82
    :pswitch_2
    move-object v2, v1

    const-string/jumbo v3, "Unexpected exception at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move-object v1, v0

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    return-object v0
.end method

.method public setErrorType(I)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move v1, p1

    .local v1, "errorType":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->errorType:I

    .line 40
    return-void
.end method

.method public setPosition(I)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->position:I

    .line 53
    return-void
.end method

.method public setUnexpectedObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move-object v1, p1

    .local v1, "unexpectedObject":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    .line 69
    return-void
.end method
