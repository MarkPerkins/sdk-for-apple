import AsyncHTTPClient
import Foundation
import NIO
import AppwriteModels

open class Teams: Service {
    ///
    /// List Teams
    ///
    /// Get a list of all the teams in which the current user is a member. You can
    /// use the parameters to filter your results.
    /// 
    /// In admin mode, this endpoint returns a list of all the teams in the current
    /// project. [Learn more about different API modes](/docs/admin).
    ///
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    open func list(
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil,
        completion: ((Result<AppwriteModels.TeamList, AppwriteError>) -> Void)? = nil
    ) {
        let path: String = "/teams"

        let params: [String: Any?] = [
            "search": search,
            "limit": limit,
            "offset": offset,
            "cursor": cursor,
            "cursorDirection": cursorDirection,
            "orderType": orderType
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.TeamList = { dict in
            return AppwriteModels.TeamList.from(map: dict)
        }

        client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Create Team
    ///
    /// Create a new team. The user who creates the team will automatically be
    /// assigned as the owner of the team. Only the users with the owner role can
    /// invite new members, add new owners and delete or update the team.
    ///
    /// @param String teamId
    /// @param String name
    /// @param [Any] roles
    /// @throws Exception
    /// @return array
    ///
    open func create(
        teamId: String,
        name: String,
        roles: [Any]? = nil,
        completion: ((Result<AppwriteModels.Team, AppwriteError>) -> Void)? = nil
    ) {
        let path: String = "/teams"

        let params: [String: Any?] = [
            "teamId": teamId,
            "name": name,
            "roles": roles
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Team = { dict in
            return AppwriteModels.Team.from(map: dict)
        }

        client.call(
            method: "POST",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Get Team
    ///
    /// Get a team by its ID. All team members have read access for this resource.
    ///
    /// @param String teamId
    /// @throws Exception
    /// @return array
    ///
    open func get(
        teamId: String,
        completion: ((Result<AppwriteModels.Team, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Team = { dict in
            return AppwriteModels.Team.from(map: dict)
        }

        client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Update Team
    ///
    /// Update a team using its ID. Only members with the owner role can update the
    /// team.
    ///
    /// @param String teamId
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    open func update(
        teamId: String,
        name: String,
        completion: ((Result<AppwriteModels.Team, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        let params: [String: Any?] = [
            "name": name
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Team = { dict in
            return AppwriteModels.Team.from(map: dict)
        }

        client.call(
            method: "PUT",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Delete Team
    ///
    /// Delete a team using its ID. Only team members with the owner role can
    /// delete the team.
    ///
    /// @param String teamId
    /// @throws Exception
    /// @return array
    ///
    open func delete(
        teamId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params,
            completion: completion
        )
    }

    ///
    /// Get Team Memberships
    ///
    /// Use this endpoint to list a team's members using the team's ID. All team
    /// members have read access to this endpoint.
    ///
    /// @param String teamId
    /// @param String search
    /// @param Int limit
    /// @param Int offset
    /// @param String cursor
    /// @param String cursorDirection
    /// @param String orderType
    /// @throws Exception
    /// @return array
    ///
    open func getMemberships(
        teamId: String,
        search: String? = nil,
        limit: Int? = nil,
        offset: Int? = nil,
        cursor: String? = nil,
        cursorDirection: String? = nil,
        orderType: String? = nil,
        completion: ((Result<AppwriteModels.MembershipList, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        let params: [String: Any?] = [
            "search": search,
            "limit": limit,
            "offset": offset,
            "cursor": cursor,
            "cursorDirection": cursorDirection,
            "orderType": orderType
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.MembershipList = { dict in
            return AppwriteModels.MembershipList.from(map: dict)
        }

        client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Create Team Membership
    ///
    /// Invite a new member to join your team. If initiated from the client SDK, an
    /// email with a link to join the team will be sent to the member's email
    /// address and an account will be created for them should they not be signed
    /// up already. If initiated from server-side SDKs, the new member will
    /// automatically be added to the team.
    /// 
    /// Use the 'url' parameter to redirect the user from the invitation email back
    /// to your app. When the user is redirected, use the [Update Team Membership
    /// Status](/docs/client/teams#teamsUpdateMembershipStatus) endpoint to allow
    /// the user to accept the invitation to the team. 
    /// 
    /// Please note that to avoid a [Redirect
    /// Attack](https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.md)
    /// the only valid redirect URL's are the once from domains you have set when
    /// adding your platforms in the console interface.
    ///
    /// @param String teamId
    /// @param String email
    /// @param [Any] roles
    /// @param String url
    /// @param String name
    /// @throws Exception
    /// @return array
    ///
    open func createMembership(
        teamId: String,
        email: String,
        roles: [Any],
        url: String,
        name: String? = nil,
        completion: ((Result<AppwriteModels.Membership, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        let params: [String: Any?] = [
            "email": email,
            "roles": roles,
            "url": url,
            "name": name
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Membership = { dict in
            return AppwriteModels.Membership.from(map: dict)
        }

        client.call(
            method: "POST",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Get Team Membership
    ///
    /// Get a team member by the membership unique id. All team members have read
    /// access for this resource.
    ///
    /// @param String teamId
    /// @param String membershipId
    /// @throws Exception
    /// @return array
    ///
    open func getMembership(
        teamId: String,
        membershipId: String,
        completion: ((Result<AppwriteModels.MembershipList, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships/{membershipId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        path = path.replacingOccurrences(
          of: "{membershipId}",
          with: membershipId        )

        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.MembershipList = { dict in
            return AppwriteModels.MembershipList.from(map: dict)
        }

        client.call(
            method: "GET",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Update Membership Roles
    ///
    /// Modify the roles of a team member. Only team members with the owner role
    /// have access to this endpoint. Learn more about [roles and
    /// permissions](/docs/permissions).
    ///
    /// @param String teamId
    /// @param String membershipId
    /// @param [Any] roles
    /// @throws Exception
    /// @return array
    ///
    open func updateMembershipRoles(
        teamId: String,
        membershipId: String,
        roles: [Any],
        completion: ((Result<AppwriteModels.Membership, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships/{membershipId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        path = path.replacingOccurrences(
          of: "{membershipId}",
          with: membershipId        )

        let params: [String: Any?] = [
            "roles": roles
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Membership = { dict in
            return AppwriteModels.Membership.from(map: dict)
        }

        client.call(
            method: "PATCH",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

    ///
    /// Delete Team Membership
    ///
    /// This endpoint allows a user to leave a team or for a team owner to delete
    /// the membership of any other team member. You can also use this endpoint to
    /// delete a user membership even if it is not accepted.
    ///
    /// @param String teamId
    /// @param String membershipId
    /// @throws Exception
    /// @return array
    ///
    open func deleteMembership(
        teamId: String,
        membershipId: String,
        completion: ((Result<Any, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships/{membershipId}"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        path = path.replacingOccurrences(
          of: "{membershipId}",
          with: membershipId        )

        let params: [String: Any?] = [:]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        client.call(
            method: "DELETE",
            path: path,
            headers: headers,
            params: params,
            completion: completion
        )
    }

    ///
    /// Update Team Membership Status
    ///
    /// Use this endpoint to allow a user to accept an invitation to join a team
    /// after being redirected back to your app from the invitation email received
    /// by the user.
    ///
    /// @param String teamId
    /// @param String membershipId
    /// @param String userId
    /// @param String secret
    /// @throws Exception
    /// @return array
    ///
    open func updateMembershipStatus(
        teamId: String,
        membershipId: String,
        userId: String,
        secret: String,
        completion: ((Result<AppwriteModels.Membership, AppwriteError>) -> Void)? = nil
    ) {
        var path: String = "/teams/{teamId}/memberships/{membershipId}/status"

        path = path.replacingOccurrences(
          of: "{teamId}",
          with: teamId        )

        path = path.replacingOccurrences(
          of: "{membershipId}",
          with: membershipId        )

        let params: [String: Any?] = [
            "userId": userId,
            "secret": secret
        ]

        let headers: [String: String] = [
            "content-type": "application/json"
        ]

        let convert: ([String: Any]) -> AppwriteModels.Membership = { dict in
            return AppwriteModels.Membership.from(map: dict)
        }

        client.call(
            method: "PATCH",
            path: path,
            headers: headers,
            params: params,
            convert: convert,
            completion: completion
        )
    }

}
