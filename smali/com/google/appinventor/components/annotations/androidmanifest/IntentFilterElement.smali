.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
        categoryElements = {}
        dataElements = {}
        icon = ""
        label = ""
        priority = ""
    .end subannotation
.end annotation


# virtual methods
.method public abstract actionElements()[Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
.end method

.method public abstract categoryElements()[Lcom/google/appinventor/components/annotations/androidmanifest/CategoryElement;
.end method

.method public abstract dataElements()[Lcom/google/appinventor/components/annotations/androidmanifest/DataElement;
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public abstract label()Ljava/lang/String;
.end method

.method public abstract priority()Ljava/lang/String;
.end method
