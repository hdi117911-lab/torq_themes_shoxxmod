.class Lcom/rey/torquetheme/MainFragment$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/torquetheme/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/torquetheme/MainFragment;


# direct methods
.method public constructor <init>(Lcom/rey/torquetheme/MainFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/rey/torquetheme/MainFragment$PagerAdapter;->this$0:Lcom/rey/torquetheme/MainFragment;

    .line 76
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment$PagerAdapter;->this$0:Lcom/rey/torquetheme/MainFragment;

    invoke-virtual {v0}, Lcom/rey/torquetheme/MainFragment;->getListFragment()Lcom/rey/torquetheme/ListFragment;

    move-result-object v0

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment$PagerAdapter;->this$0:Lcom/rey/torquetheme/MainFragment;

    invoke-virtual {v0}, Lcom/rey/torquetheme/MainFragment;->getPropertiesFragment()Lcom/rey/torquetheme/PropertiesFragment;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 99
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment$PagerAdapter;->this$0:Lcom/rey/torquetheme/MainFragment;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/rey/torquetheme/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/rey/torquetheme/MainFragment$PagerAdapter;->this$0:Lcom/rey/torquetheme/MainFragment;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/rey/torquetheme/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
