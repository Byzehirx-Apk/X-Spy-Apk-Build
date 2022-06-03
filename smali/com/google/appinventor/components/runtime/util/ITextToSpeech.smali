.class public interface abstract Lcom/google/appinventor/components/runtime/util/ITextToSpeech;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    }
.end annotation


# virtual methods
.method public abstract isInitialized()Z
.end method

.method public abstract isLanguageAvailable(Ljava/util/Locale;)I
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setPitch(F)V
.end method

.method public abstract setSpeechRate(F)V
.end method

.method public abstract speak(Ljava/lang/String;Ljava/util/Locale;)V
.end method
