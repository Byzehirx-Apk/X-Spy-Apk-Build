.class public interface abstract Lgnu/lists/CharSeq;
.super Ljava/lang/Object;
.source "CharSeq.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Lgnu/lists/Sequence;


# virtual methods
.method public abstract charAt(I)C
.end method

.method public abstract consume(IILgnu/lists/Consumer;)V
.end method

.method public abstract fill(C)V
.end method

.method public abstract fill(IIC)V
.end method

.method public abstract getChars(II[CI)V
.end method

.method public abstract length()I
.end method

.method public abstract setCharAt(IC)V
.end method

.method public abstract subSequence(II)Ljava/lang/CharSequence;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract writeTo(IILjava/lang/Appendable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/lang/Appendable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
