.class public Lcom/rey/torquetheme/CustomEditText;
.super Landroid/widget/EditText;
.source "CustomEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/torquetheme/CustomEditText$OnDoneListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 35
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/rey/torquetheme/CustomEditText;->listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/rey/torquetheme/CustomEditText;->listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    invoke-interface {v0, p0}, Lcom/rey/torquetheme/CustomEditText$OnDoneListener;->onDone(Landroid/view/View;)V

    .line 39
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 43
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/rey/torquetheme/CustomEditText;->listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/rey/torquetheme/CustomEditText;->listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    invoke-interface {v0, p0}, Lcom/rey/torquetheme/CustomEditText$OnDoneListener;->onDone(Landroid/view/View;)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnDoneListener(Lcom/rey/torquetheme/CustomEditText$OnDoneListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/rey/torquetheme/CustomEditText;->listener:Lcom/rey/torquetheme/CustomEditText$OnDoneListener;

    .line 32
    return-void
.end method
