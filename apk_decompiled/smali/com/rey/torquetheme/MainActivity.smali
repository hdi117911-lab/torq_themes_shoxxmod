.class public Lcom/rey/torquetheme/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/torquetheme/MainActivity$ImageAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_CHOOSER:I = 0x4d2


# instance fields
.field private adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mMainFragment:Lcom/rey/torquetheme/MainFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetailFragment(Ljava/lang/String;)Lcom/rey/torquetheme/DetailFragment;
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/rey/torquetheme/MainActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    sget-object v2, Lcom/rey/torquetheme/DetailFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/rey/torquetheme/DetailFragment;

    .line 99
    .local v0, "fragment":Lcom/rey/torquetheme/DetailFragment;
    if-nez v0, :cond_0

    .line 100
    invoke-static {p1}, Lcom/rey/torquetheme/DetailFragment;->newInstance(Ljava/lang/String;)Lcom/rey/torquetheme/DetailFragment;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0, p1}, Lcom/rey/torquetheme/DetailFragment;->setFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImageAdapter()Lcom/rey/torquetheme/MainActivity$ImageAdapter;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    invoke-direct {v0, p0, p0}, Lcom/rey/torquetheme/MainActivity$ImageAdapter;-><init>(Lcom/rey/torquetheme/MainActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rey/torquetheme/MainActivity;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity;->adapter:Lcom/rey/torquetheme/MainActivity$ImageAdapter;

    return-object v0
.end method

.method public getMainFragment()Lcom/rey/torquetheme/MainFragment;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity;->mMainFragment:Lcom/rey/torquetheme/MainFragment;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/rey/torquetheme/MainFragment;->newInstance()Lcom/rey/torquetheme/MainFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/MainActivity;->mMainFragment:Lcom/rey/torquetheme/MainFragment;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/rey/torquetheme/MainActivity;->mMainFragment:Lcom/rey/torquetheme/MainFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 54
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 55
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    const-string v2, "Error! Please select a TTF file"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 65
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p0}, Lcom/rey/torquetheme/MainActivity;->getMainFragment()Lcom/rey/torquetheme/MainFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rey/torquetheme/MainFragment;->getPropertiesFragment()Lcom/rey/torquetheme/PropertiesFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rey/torquetheme/PropertiesFragment;->setFont(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    const-string v2, "Font saved! Please restart Torque app!"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    :cond_2
    const-string v2, "Error! Cannot set the font!"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/rey/torquetheme/MainActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/rey/torquetheme/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rey/torquetheme/MainActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/rey/torquetheme/MainActivity;->getMainFragment()Lcom/rey/torquetheme/MainFragment;

    move-result-object v0

    sget-object v1, Lcom/rey/torquetheme/MainFragment;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/rey/torquetheme/MainActivity;->showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public showDialog(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/rey/torquetheme/MainActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 85
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "addNew"    # Z

    .prologue
    const v2, 0x7f080005

    .line 68
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/rey/torquetheme/MainActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 71
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {v0, v2, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    .end local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void

    .line 74
    .restart local v0    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v0, v2, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
