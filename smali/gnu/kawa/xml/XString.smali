.class public Lgnu/kawa/xml/XString;
.super Ljava/lang/Object;
.source "XString.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public text:Ljava/lang/String;

.field private type:Lgnu/kawa/xml/XStringType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Lgnu/kawa/xml/XStringType;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    .line 35
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/kawa/xml/XString;->type:Lgnu/kawa/xml/XStringType;

    .line 36
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XString;
    return v0
.end method

.method public getStringType()Lgnu/kawa/xml/XStringType;
    .locals 2

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XString;->type:Lgnu/kawa/xml/XStringType;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XString;
    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XString;
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xml/XString;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XString;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XString;
    return-object v0
.end method
