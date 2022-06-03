.class public Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
.super Ljava/lang/Object;
.source "Yytoken.java"


# static fields
.field public static final TYPE_COLON:I = 0x6

.field public static final TYPE_COMMA:I = 0x5

.field public static final TYPE_EOF:I = -0x1

.field public static final TYPE_LEFT_BRACE:I = 0x1

.field public static final TYPE_LEFT_SQUARE:I = 0x3

.field public static final TYPE_RIGHT_BRACE:I = 0x2

.field public static final TYPE_RIGHT_SQUARE:I = 0x4

.field public static final TYPE_VALUE:I


# instance fields
.field public type:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 20
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    .line 21
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    .line 24
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    .line 25
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 30
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget v2, v2, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v2, :pswitch_data_0

    .line 56
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
    return-object v0

    .line 32
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/Yytoken;
    :pswitch_0
    move-object v2, v1

    const-string/jumbo v3, "VALUE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 33
    goto :goto_0

    .line 35
    :pswitch_1
    move-object v2, v1

    const-string/jumbo v3, "LEFT BRACE({)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 36
    goto :goto_0

    .line 38
    :pswitch_2
    move-object v2, v1

    const-string/jumbo v3, "RIGHT BRACE(})"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    goto :goto_0

    .line 41
    :pswitch_3
    move-object v2, v1

    const-string/jumbo v3, "LEFT SQUARE([)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    move-object v2, v1

    const-string/jumbo v3, "RIGHT SQUARE(])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 45
    goto :goto_0

    .line 47
    :pswitch_5
    move-object v2, v1

    const-string/jumbo v3, "COMMA(,)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    goto :goto_0

    .line 50
    :pswitch_6
    move-object v2, v1

    const-string/jumbo v3, "COLON(:)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51
    goto :goto_0

    .line 53
    :pswitch_7
    move-object v2, v1

    const-string/jumbo v3, "END OF FILE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
