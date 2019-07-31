package com.jeven.myblog.service;

import com.jeven.myblog.model.FriendLink;
import com.jeven.myblog.model.Result;
import net.sf.json.JSONArray;

/**
 * @author: zhangocean
 * @Date: 2019/5/16 17:08
 * Describe:
 */
public interface FriendLinkService {

    Result addFriendLink(FriendLink friendLink);

    JSONArray getAllFriendLink();

    Result updateFriendLink(FriendLink friendLink, int id);

    Result deleteFriendLink(int id);

    Result getFriendLink();
}
