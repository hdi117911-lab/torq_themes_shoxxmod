.class public Lcom/rey/torquetheme/SplashActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/rey/torquetheme/SplashActivity;->setContentView(I)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/rey/torquetheme/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/rey/torquetheme/SplashActivity$1;-><init>(Lcom/rey/torquetheme/SplashActivity;)V

    .line 24
    const-wide/16 v2, 0xbb8

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
.end method
